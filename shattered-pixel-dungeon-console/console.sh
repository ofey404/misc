if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

GAMES=$(ls $SPD_PATH| grep game)

echo "## Following are games ##"
echo "$GAMES"
echo "## Enter game id, eg: game1 ##"
read ID

DATA_PATH="$SPD_PATH/$ID"
echo "## Game data path is $DATA_PATH ##"

GAME_FILE="$DATA_PATH/game.dat"
cp "$GAME_FILE" "$GAME_FILE.backup"
echo "## Backuped game file in $GAME_FILE.backup ##"

JSON_FILE="game.json"
gunzip -S dat "$GAME_FILE" -c > $JSON_FILE

# EDITOR
code $JSON_FILE

echo "..."
echo "## Press anykey when finish editing ##"
read _

echo "## Write game file back ##"
gzip -c "$JSON_FILE" > "$GAME_FILE"