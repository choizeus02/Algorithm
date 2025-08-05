import sys
import string

s = sys.stdin.readline().strip()

for char in string.ascii_lowercase:
    print(s.find(char), end = ' ')
    

