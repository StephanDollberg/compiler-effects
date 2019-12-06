#include <cstdio>
#include <random>

#include "definitions.cpp"

int main(int argc, char** argv) {
    bool flag = argv[0][0] == '1';

    std::uint64_t value = 123;

    for (int i = 0; i < 10000; ++i)
    {
#include "calls.cpp"
    }

    printf("%ld\n", value);

    return 0;
}
