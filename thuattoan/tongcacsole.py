# S = 1 + 3 + 5 + 7 + ... (2n + 1)
from re import I

print ("Nhap vao so: ")
n = int(input())
s = 0
i = 1

while i <= (2*int(n)+1):
    s = s + i 
    i +=2
    
print ("Tong cac so le la: ", s)
    
    