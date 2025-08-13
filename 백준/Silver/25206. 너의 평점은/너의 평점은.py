import sys

d ={
    'A+' : 4.5,
    'A0' : 4,
    'B+' : 3.5,
    'B0' : 3,
    'C+' : 2.5,
    'C0' : 2,
    'D+' : 1.5,
    'D0' : 1,
    'F' : 0
}

count = 0
num = 0

for line in sys.stdin.readlines():
    line = line.strip().split()
    if line[2] == 'P':
        continue
    count += float(line[1]) * d[line[2]]
    num += float(line[1])

print(count/num)


