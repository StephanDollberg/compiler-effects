#!/usr/bin/env python
count = 2000

data = '''
std::int64_t __attribute__ ((noinline)) hotXXX(std::int64_t in)
{
    return in + XXX;
}

std::int64_t __attribute__ ((noinline)) coldXXX(std::int64_t in)
{
    return in - XXX * 3;
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
