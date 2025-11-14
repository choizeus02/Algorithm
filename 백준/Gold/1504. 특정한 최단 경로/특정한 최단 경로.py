import sys
input=sys.stdin.readline
from heapq import heappop, heappush
INF = int(1e9)


def solution(start):
    visited = [INF for _ in range(n+1)]
    heap=[]
    heappush(heap,[0,start])
    visited[start] = 0

    while heap:
        dist, num = heappop(heap)

        if dist > visited[num]:
            continue
        for i,j in graph[num]:
            cost =dist + j
            if cost < visited[i]:
                visited[i] = cost
                heappush(heap, [cost,i])

    return visited 



n,e = map(int,input().split())
graph = [[] for _ in range(n+1)]
for _ in range(e):
    n1,n2,w = map(int, input().split())
    graph[n1].append((n2,w))
    graph[n2].append((n1,w))

v1, v2 = map(int, input().split())


a = solution(1)
b = solution(v1)
c = solution(v2)

answer = min(a[v1] + b[v2] + c[n], a[v2]+c[v1]+b[n])

if answer >= 1e9:
    print(-1)
else:
    print(answer)
