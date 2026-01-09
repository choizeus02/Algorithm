from collections import deque


def solution(n, computers):
    
    visited = [False] * n
    
    answer = 0
    
    for start in range(n):
        if visited[start]:
            continue
            
        answer += 1
        q = deque([start])
        print(q)
        visited[start] = True
        
        while q:
            v = q.popleft()
            for nxt in range(n):
                if computers[v][nxt] == 1 and not visited[nxt]:
                    visited[nxt] = True
                    q.append(nxt)

    print(visited)
    
    return answer