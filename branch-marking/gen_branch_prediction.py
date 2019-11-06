#!/usr/bin/env python
import random
count = 2000

data = '''
if (dis(gen) > 5)
{
    res += XXX;
}
else
{
    res += YYY;
}
'''

with open('body.cpp', 'w') as f:
    for i in range(1, count + 1):
        f.write(data.replace('XXX', str(random.randrange(1, 1000000000))).replace('YYY', str(random.randrange(1, 100000000))))

