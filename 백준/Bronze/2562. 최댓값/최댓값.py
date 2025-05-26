import sys

t = sys.stdin.readlines()
t = list(map(int,map(str.strip,t)))

max_val = t[0]
max_idx = 0
for i in range(1,len(t)):
    if t[i] > max_val:
        max_val = t[i]
        max_idx = i

print(max_val)
print(max_idx+1)