import sys

n = int(input())
count = 0


for _ in range(n):
    word = sys.stdin.readline().strip()
    s = set()
    is_group = True
    for i in range(len(word)):
        current = word[i]

        if i>0 and current != word[i-1]:
            if current in s:
                is_group = False
                break
        s.add(current)
    
    if is_group:
        count += 1

print(count)


