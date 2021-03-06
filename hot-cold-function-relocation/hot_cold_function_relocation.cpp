#include <cstdio>
#include <cstdint>

#include "definitions.cpp"

int main(int, char** argv) {
    const bool flag = argv[1][0] == '1';

    std::int64_t res = 0xff51afd7ed558aef;
    for (int i = 0; i < 10000; ++i) {
        if (flag) {
#include "warmcalls.cpp"
        }
        else
        {
#include "coldcalls.cpp"
        }
    }

    printf("%ld\n", res);

    return 0;
}
