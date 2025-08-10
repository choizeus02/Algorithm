import sys
from collections import Counter


n = sys.stdin.readline().strip().upper()

counts = Counter(n)

counts = counts.most_common(2)

if len(counts) > 1 and counts[0][1] == counts[1][1]:
    print('?')
else:
    print(counts[0][0],end='')