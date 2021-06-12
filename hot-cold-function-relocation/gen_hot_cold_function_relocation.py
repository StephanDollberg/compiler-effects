#!/usr/bin/env python
count = 2000

data = '''
[[gnu::noinline]]
std::int64_t hotXXX(std::int64_t input)
{
    input ^= (input >> 33);
    input *= 0xff51afd7ed558ccd + XXX;
    input ^= (input >> 33);
    input *= 0xc4ceb9fe1a85ec53 + XXX;
    input ^= (input >> 33);
    return input;
}

[[gnu::noinline]]
std::int64_t coldXXX(std::int64_t input)
{
    input ^= (input >> 33);
    input *= 0xff51afd7ed558ccd + XXX * 2;
    input ^= (input >> 33);
    input *= 0xc4ceb9fe1a85ec53 + XXX * 3;
    input ^= (input >> 33);
    return input;
}
'''

with open('definitions.cpp', 'w') as f:
    for i in range(1, count + 1):
        f.write(data.replace('XXX', str(i)))


with open('warmcalls.cpp', 'w') as f:
    for i in range(1, count + 1):
        f.write('res = hot{i}(res);\n'.format(i=i))

with open('coldcalls.cpp', 'w') as f:
    for i in range(1, count + 1):
        f.write('res = cold{i}(res);\n'.format(i=i))
