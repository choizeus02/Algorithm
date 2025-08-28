import sys

n = int(sys.stdin.readline())

m = [list(map(int, sys.stdin.readline().split())) for _ in range(n)]

m.sort()

for x,y in m:
    print(x,y)