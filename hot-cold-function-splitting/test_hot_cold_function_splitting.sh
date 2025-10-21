#!/usr/bin/env bash

set -xe;
perf stat -ddd -r 3 ./base 0
perf stat -ddd -r 3 ./pgo 0
