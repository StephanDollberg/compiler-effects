set -xe;
perf stat -e L1-icache-load-misses,iTLB-load-misses,br_misp_retired.all_branches,baclears.any -r 10 ./base 1
perf stat -e L1-icache-load-misses,iTLB-load-misses,br_misp_retired.all_branches,baclears.any -r 10 ./pgo 1
