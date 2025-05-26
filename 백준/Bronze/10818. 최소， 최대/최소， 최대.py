import sys

num = int(input())
t = list(map(int,sys.stdin.readline().split()))
print(min(t),end = " ")
print(max(t))