#!/usr/bin/env bash
# set -x             # for debug
set -euo pipefail # fail early

DATA_DIR="./data"
readonly DATA_DIR

main() {
	local item_counts=("$@")
	mkdir -p $DATA_DIR

	for i in "${item_counts[@]}"; do
		perf stat -e L1-dcache-loads \
			-e L1-dcache-load-misses \
			-e cache-references \
			-e cache-misses \
			./cache-test "$i" \
			>"$DATA_DIR/$i" 2>&1
	done
}

main "$@"
