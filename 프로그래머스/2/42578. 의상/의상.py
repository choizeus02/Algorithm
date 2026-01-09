from collections import Counter


def solution(clothes):
    
    cnt = Counter(kind for _,kind in clothes)
    ans = 1
    # print(cnt)
    for k in cnt.values():
        ans *= (k+1)
    
    return ans -1