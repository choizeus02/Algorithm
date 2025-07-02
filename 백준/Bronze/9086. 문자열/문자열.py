import sys

n = int(input())

for _ in range(n):
    m = sys.stdin.readline().strip()
    print(m[0],end='')
    print(m[-1])