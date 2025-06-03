import sys

t = list(range(1,31))

for _ in range(28):
    num = int(sys.stdin.readline())
    t.remove(num)

print(t[0])
print(t[1])