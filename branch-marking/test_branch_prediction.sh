set -xe;
perf stat -e cycles,instructions,branches,branch-misses -r 10 ./base
perf stat -e cycles,instructions,branches,branch-misses -r 10 ./pgo
