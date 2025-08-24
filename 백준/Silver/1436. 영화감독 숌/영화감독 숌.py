import sys

m = int(sys.stdin.readline().strip())


num = 666
while True:
    if '666' in str(num):
        m -= 1
        if m==0:
            break
    num += 1
    
print(num)