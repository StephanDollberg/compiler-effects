set -xe;

g++ -O3 -std=c++17 -o base hot_cold_function_splitting.cpp;

rm -rf pgo-hot_cold_function_splitting.gcda
g++ -O3 -std=c++17 -fprofile-generate -o pgo hot_cold_function_splitting.cpp
./pgo 0
g++ -O3 -std=c++17 -fprofile-use -o pgo hot_cold_function_splitting.cpp

