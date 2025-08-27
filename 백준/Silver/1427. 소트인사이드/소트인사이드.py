import sys

n = sys.stdin.readline().strip()

temp = list(n)
temp.sort(reverse=True)


print("".join(temp))