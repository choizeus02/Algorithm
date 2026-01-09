from collections import Counter

def solution(participant, completion):
    cnt = Counter(participant)
    cnt.subtract(completion)
    # print(cnt)
    for name, v in cnt.items():
        if v > 0:
            return name