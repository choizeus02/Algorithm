import sys
from itertools import zip_longest

m = [line.strip() for line in sys.stdin.readlines()]

for col in zip_longest(*m, fillvalue=''):
    print(''.join(col),end='')