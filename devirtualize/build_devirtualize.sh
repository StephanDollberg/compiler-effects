rm -rf pgo-devirtualize.gcda

set -xe;

g++ -O3 -std=c++17 -o base devirtualize.cpp;

g++ -O3 -std=c++17 -fprofile-generate -o pgo devirtualize.cpp
./pgo 1
g++ -O3 -std=c++17 -fprofile-use -o pgo devirtualize.cpp

