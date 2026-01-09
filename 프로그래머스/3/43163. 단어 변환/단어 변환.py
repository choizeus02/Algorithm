from collections import deque

def diff_one(a, b):
    cnt = 0
    for x, y in zip(a, b):
        if x != y:
            cnt += 1
            if cnt > 1:
                return False
    return cnt == 1

def solution(begin, target, words):
    
    if target not in words:
        return 0
    
    n = len(words)
    visited = [False] * n
    
    q = deque([(begin,0)])
    # print(q)
    
    while q:
        curr, dist = q.popleft()
        
        if curr == target:
            return dist
        
        for i in range(n):
            if not visited[i] and diff_one(curr,words[i]):
                visited[i] = True
                q.append((words[i], dist+1))
    
    
    # answer = 0
    return 0
