import sys

a,b = map(int, sys.stdin.readline().split())
temp = [0] * a
for _ in range(b):
    i,j,k = map(int,sys.stdin.readline().split())
    temp[i-1:j] =[k] * (j-i+1)

print(*temp,sep=' ')
