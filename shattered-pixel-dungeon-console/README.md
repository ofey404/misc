Shattered Pixel Dungeon Console
===============================

Script for manipulating save files of Shattered Pixel Dungeon.

## What is in game.dat

Save file structure:

```bash
../game2
├── depth1.dat # Depth files
├── depth2.dat
├── depth3.dat
└── game.dat   # General game save file
```

`game.dat` is a gzipped JSON file, so just gunzip it, edit content and put it back.

## Usage

```bash
echo "SPD_PATH=~/snap/shattered-pixel-dungeon/common/.shatteredpixel/shattered-pixel-dungeon" > .env
source .env

chmod 774 ./console.sh
./console.sh

# CONSOLE OUTPUT

# ## Following are games ##
# game1
# game2
# game3
# game4
# ## Enter game id, eg: game1 ##
# game4
# ## Game data path is /home/ofey/snap/shattered-pixel-dungeon/common/.shatteredpixel/shattered-pixel-dungeon/game4 ##
# ## Backuped game file in /home/ofey/snap/shattered-pixel-dungeon/common/.shatteredpixel/shattered-pixel-dungeon/game4/game.dat.backup ##
# ...
# ## Press anykey when finish editing ##
# 
# ## Write game file back ##
```
