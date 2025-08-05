import sys
import string

n = int(input())

for _ in range(n):
    R, S = sys.stdin.readline().split()
    for i in range(len(S)):
        print(int(R)*S[i], end='')
    print()
    

