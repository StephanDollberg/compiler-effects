set -xe;

g++ -O2 -g -fno-omit-frame-pointer -std=c++17 -o base hot_cold_function_relocation.cpp;

rm -rf hot_cold_function_relocation.gcda
g++ -O2 -g -fno-omit-frame-pointer -std=c++17 -fprofile-generate -o pgo hot_cold_function_relocation.cpp
./pgo 1
g++ -O2 -g -fno-omit-frame-pointer -std=c++17 -fprofile-use -o pgo hot_cold_function_relocation.cpp

