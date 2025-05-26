import sys

num = int(input())
 
t = list(map(int, sys.stdin.readline().split()))
num2 = int(input())
answer = 0

for  i in range(num):
    if num2 == t[i]:
        answer+=1


print(answer)