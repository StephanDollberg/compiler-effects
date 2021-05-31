set -xe;
perf stat -ddd -r 10 ./base 1
perf stat -ddd -r 10 ./pgo 1
