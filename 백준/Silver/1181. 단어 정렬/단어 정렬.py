import sys

n = int(sys.stdin.readline())

m = [sys.stdin.readline().strip() for _ in range(n)]

m = set(m)

result = sorted(m, key=lambda x: (len(x), x))



for x in range(len(m)):
    print(result[x])