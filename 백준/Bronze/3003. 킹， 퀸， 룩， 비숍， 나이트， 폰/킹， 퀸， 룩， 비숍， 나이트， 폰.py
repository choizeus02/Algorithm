import sys

a= list(map(int, sys.stdin.readline().split()))

b = [1,1,2,2,2,8]

c = [b[i] - a[i] for i in range(len(a))]

print(' '.join(map(str, c)))