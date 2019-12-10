set -xe;
perf stat -e L1-icache-load-misses,iTLB-load-misses -r 10 ./base
perf stat -e L1-icache-load-misses,iTLB-load-misses -r 10 ./pgo 0
