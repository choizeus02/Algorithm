import sys
input = sys.stdin.readline
INF = int(1e9)
V, E = map(int, input().split())



matrix = [[int(1e9)] * (V+1) for _ in range(V+1)]

for _ in range(E):
    a,b,c = map(int, input().split())
    if c < matrix[a][b]:
        matrix[a][b] = c


for k in range(1, V+1):
    mk = matrix[k]
    for i in range(1, V+1):
        mik = matrix[i][k]
        if mik == INF:
            continue
        mi = matrix[i]
        for j in range(1, V+1):
            mj = mk[j]
            if mj == INF:
                continue
            new = mik + mj
            if new < mi[j]:
                mi[j] = new


answer = 1e9

for i in range(1, V+1):
    answer = min(answer, matrix[i][i])

if answer == 1e9:
    print(-1)
else:
    print(answer)