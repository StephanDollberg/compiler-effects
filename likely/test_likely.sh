#!/usr/bin/env bash

set -xe;
perf stat -ddd -r 10 ./base 0
perf stat -ddd -r 10 ./pgo 0
