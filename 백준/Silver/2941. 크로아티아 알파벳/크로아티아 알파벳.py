import sys

d = ['c=','c-','dz=','d-','lj','nj','s=','z=']

s = sys.stdin.readline().strip()

count = 0
while len(s) !=0:
    found = False
    for item in d:
        if s.startswith(item):
            count += 1
            s = s.removeprefix(item)
            found = True
            break

    if not found:
        count += 1
        s=s[1:]
    
print(count)