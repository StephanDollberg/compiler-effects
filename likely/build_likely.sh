set -xe;

g++ -O3 -std=c++17 -o base likely.cpp;

rm -rf pgo-likely.gcda
g++ -O3 -std=c++17 -fprofile-generate -o pgo likely.cpp
./pgo 0
g++ -O3 -std=c++17 -fprofile-use -o pgo likely.cpp

