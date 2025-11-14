import sys
input=sys.stdin.readline
from heapq import heappop, heappush
INF = int(1e9)


V, E = map(int,input().split())
start = int(input())

graph = [[] for _ in range(V+1)]

for _ in range(E):
    n1, n2, w = map(int,input().split())
    graph[n1].append((n2,w))

def dijkstar(start):
    visited = [INF] * (V+1)
    q = []
    heappush(q, (0,start))
    visited[start]=0

    while q:
        dist, cur_node = heappop(q)

        if visited[cur_node] < dist:
            continue

        for nxt_node, weight in graph[cur_node]:
            cost = dist + weight

            if cost < visited[nxt_node]:
                visited[nxt_node] = cost
                heappush(q, (cost, nxt_node))

    return visited

answer = dijkstar(start)
for i in answer[1:]:
    if i >= INF:
        print("INF")
    else:
        print(i)