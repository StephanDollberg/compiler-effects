set -xe;

g++ -O2 -std=c++17 -o base devirtualize.cpp;

rm -rf pgo-devirtualize.gcda
g++ -O2 -std=c++17 -fprofile-generate -o pgo devirtualize.cpp
./pgo 1
g++ -O2 -std=c++17 -fprofile-use -o pgo devirtualize.cpp

