def solution(numbers, target):
    n = len(numbers)
    
    answer = 0
    
    def dfs(i,acc):
        
        nonlocal answer
        if i==n:
            if acc==target:
                answer += 1
            return answer
        
        dfs(i+1,acc + numbers[i])
        dfs(i+1,acc - numbers[i])
    dfs(0,0)
    return answer