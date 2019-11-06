#include <cstdio>
#include <random>

int main() {
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(1, 100);

    std::int64_t res = 0;
    for (int i = 0; i < 10000; ++i) {
#include "body.cpp"
    }

    printf("%ld\n", res);

    return 0;
}
