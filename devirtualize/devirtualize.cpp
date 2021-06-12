#include <cstdio>
#include <cstdint>

struct ICalculator {
    virtual std::int64_t calculate(std::int64_t) = 0;
};


struct Multiplier : ICalculator {
    std::int64_t calculate(std::int64_t input) final {
        return input * 0x1234;
    }
};

struct Divider : ICalculator {
    std::int64_t calculate(std::int64_t input) final {
        return input / 0x1234;
    }
};

[[gnu::noinline]]
std::int64_t calculate(ICalculator* calculator, std::int64_t input) {
    return calculator->calculate(input);
}

int main(int, char** argv) {
    const bool flag = argv[1][0] == '1';

    ICalculator* calculator;

    if (flag) {
        calculator = new Multiplier();
    } else {
        calculator = new Divider();
    }

    std::int64_t res = 1;
    for (int i = 0; i < 10000000; ++i) {
        res = calculate(calculator, res);
    }

    printf("%ld\n", res);

    return 0;
}
