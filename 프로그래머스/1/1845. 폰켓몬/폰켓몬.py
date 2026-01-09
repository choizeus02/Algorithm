def solution(nums):
    n = len(nums)//2
    kinds = len(set(nums))
    
    return min(n,kinds)