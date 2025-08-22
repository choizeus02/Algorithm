import sys

a,b,c,d,e,f = map(int, sys.stdin.readline().strip().split())

y = (a * f - c * d) / (a * e - b * d)

x = 0
if a != 0:
    x = (c - b * y) / a
else:
    x = (f - e * y) / d


print(int(x),int(y))    