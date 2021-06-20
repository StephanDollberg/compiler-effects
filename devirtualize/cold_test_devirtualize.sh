#!/usr/bin/env bash

set -xe;
perf stat -e cycles,stalled-cycles-frontend,stalled-cycles-backend,branches -r 10 ./base 0
perf stat -e cycles,stalled-cycles-frontend,stalled-cycles-backend,branches -r 10 ./pgo 0
