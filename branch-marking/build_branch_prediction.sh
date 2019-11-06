set -xe;

g++ -O2 -fno-omit-frame-pointer -g -std=c++17 -o base branch_prediction.cpp;

rm -rf branch_prediction.gcda
g++ -O2 -fno-omit-frame-pointer -g -std=c++17 -fprofile-generate -o pgo branch_prediction.cpp
./pgo
g++ -O2 -fno-omit-frame-pointer -g -std=c++17 -fprofile-use -o pgo branch_prediction.cpp

