rm -rf pgo-hot_cold_function_relocation.gcda

set -xe;

g++ -O3 -std=c++17 -o base hot_cold_function_relocation.cpp;

g++ -O3 -std=c++17 -fprofile-generate -o pgo hot_cold_function_relocation.cpp
./pgo 1
g++ -O3 -std=c++17 -fprofile-use -o pgo hot_cold_function_relocation.cpp

