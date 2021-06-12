#!/usr/bin/env python
count = 2000

data = '''
[[gnu::noinline]]
std::uint64_t funcXXX(std::uint64_t input, bool flag)
{
    input ^= (input >> 33);
    input *= 0xff51afd7ed558ccd + XXX;
    input ^= (input >> 33);
    input *= 0xc4ceb9fe1a85ec53 + XXX;
    input ^= (input >> 33);

    if (flag)
    {
        input *= 0xff51afd7ed558cc3 + XXX;
        input ^= (input >> 33);
        input *= 0xc4ceb9fe1a85ec51 + XXX;
        input ^= (input >> 33);
        input *= 0xff51afd7ed558ce3 + XXX;
        input ^= (input >> 33);
        input *= 0xc4ceb9fe1a85ec41 + XXX;
        input ^= (input >> 33);
    }

    input *= 0xff51afd7ed558ccf + XXX;
    input ^= (input >> 33);
    input *= 0xc4ceb9fe1a85ec52 + XXX;
    input ^= (input >> 33);

    return input;
}
'''

with open('definitions.cpp', 'w') as f:
    for i in range(1, count + 1):
        f.write(data.replace('XXX', str(i)))

with open('calls.cpp', 'w') as f:
    for i in range(1, count + 1):
        f.write('value += func{i}(value, flag);\n'.format(i=i))
