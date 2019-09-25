#include <cstdio>
#include <random>
#include <iostream>


std::uint64_t __attribute__ ((noinline)) func(std::uint64_t input, bool flag)
{
    input ^= (input >> 33);
    input *= 0xff51afd7ed558ccd;
    input ^= (input >> 33);
    input *= 0xc4ceb9fe1a85ec53;
    input ^= (input >> 33);

    if (flag)
    {
        input ^= (input >> 33);
        input *= 0xff51afd7ed558cc3;
        input ^= (input >> 33);
        input *= 0xc4ceb9fe1a85ec51;
        input ^= (input >> 33);
        input ^= (input >> 33);
        input *= 0xff51afd7ed558ce3;
        input ^= (input >> 33);
        input *= 0xc4ceb9fe1a85ec41;
        input ^= (input >> 33);
        input ^= (input >> 33);
        input *= 0xff51afd7ed558ec3;
        input ^= (input >> 33);
        input *= 0xc4ceb9fe1a85ed51;
        input ^= (input >> 33);
        input ^= (input >> 33);
        input *= 0xff51afd7ed559cc3;
        input ^= (input >> 33);
        input *= 0xc4ceb9fe1a85dc51;
        input ^= (input >> 33);
    }

    input ^= (input >> 33);
    input *= 0xff51afd7ed558ccf;
    input ^= (input >> 33);
    input *= 0xc4ceb9fe1a85ec52;
    input ^= (input >> 33);

    return input;
}


int main(int argc, char** argv) {
    bool flag = argv[0][0] == '1';

    std::uint64_t value = 123;

    for (int i = 0; i < 100000000; ++i)
    {
        value = func(value, flag);
    }

    printf("%ld\n", value);

    return 0;
}
