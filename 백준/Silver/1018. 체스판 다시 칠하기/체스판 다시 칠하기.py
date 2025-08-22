import sys

m,n = map(int, sys.stdin.readline().strip().split())

board = [list(sys.stdin.readline().strip()) for _ in range(m)]

minchange= 64


for i in range(m-7):
    for j in range(n-7):
        change = 0

        for row in range(i, i+8):
            for col in range(j,j+8):
                
                if (row+col) %2 == 0:
                    if board[row][col] != 'W':
                        change +=1
                else:
                    if board[row][col] != 'B':
                        change +=1

        change_B = 64-change
        minC = min(change,change_B)

        if minC < minchange:
            minchange= minC

print(minchange)

