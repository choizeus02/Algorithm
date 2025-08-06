import sys

s,n = sys.stdin.readline().split()

print(max(int(s[::-1]),int(n[::-1])))