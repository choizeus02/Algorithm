import sys

n = int(sys.stdin.readline())

m = [list(map(int, sys.stdin.readline().split())) for _ in range(n)]

m.sort(key=lambda p: (p[1],p[0]))

for x,y in m:
    print(x,y)