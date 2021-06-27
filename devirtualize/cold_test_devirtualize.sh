#!/usr/bin/env bash

set -xe;
perf stat -e cycles,stalled-cycles-frontend,stalled-cycles-backend,branches,branch-misses -r 3 ./base 0
perf stat -e cycles,stalled-cycles-frontend,stalled-cycles-backend,branches,branch-misses -r 3 ./pgo 0
