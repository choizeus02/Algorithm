import sys

N = int(input())

data = list(map(int,input().split()))

data.sort()
count=0

for i in range(N):
    target = data[i]
    left, right = 0, N-1

    while left < right:
        if left == i:
            left += 1
            continue
        if right == i:
            right -= 1
            continue

        total = data[left] + data[right]

        if total == target:
            count += 1
            break
        elif total < target:
            left += 1
        else:
            right -= 1

print(count)