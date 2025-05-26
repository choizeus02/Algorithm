import sys

a,b = map(int, sys.stdin.readline().split())
t = list(map(int,sys.stdin.readline().split()))
for i in range(a):
    if t[i]<b:
        print(t[i],end=' ')

