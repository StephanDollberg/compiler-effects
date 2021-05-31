set -xe;

g++ -O3 -std=c++17 -o base devirtualize.cpp;

rm -rf pgo-devirtualize.gcda
g++ -O3 -std=c++17 -fprofile-generate -o pgo devirtualize.cpp
./pgo 1
g++ -O3 -std=c++17 -fprofile-use -o pgo devirtualize.cpp

