# Cho 2 list a va b đã được sắp sếp trước theo thứ tự tăng dần, 
# đầu ra: yêu cầu sắp xếp mảng c là tập hợp tất cả các phần tử của a và b

a = [1, 3, 7, 56]
b = [2, 6,89]
c = []

# while (a!=[]) & (b!=[]):
#     if(a[0]<b[0]):
#         c.append(a[0])
#         a=a[1:]
#     else:
#         c.append(b[0])
#         b=b[1:]
# if(a!=[]):c=c+a
# if(b!=[]):c=c+b

while (a!=[]) & (b!=[]):
    if(a[0]<b[0]):
        c.append(a[0])
        a=a[1:]
    else:
        c.append(b[0])
        b=b[1:]

# dùng được kiểu này vì đến đây ra khỏi vòng lặp thì chắc chắn 1 trong 
# 2 list a hoặc b có số phần tử ít hơn list còn lại đã trở thành mảng rỗng

if(a!=[]):
    c=c+a
else:
    c=c+b
# if(b!=[]):c=c+b   
print(c)

# sắp xếp giảm dần

a1 = [456,87,56,7,3]
b1 = [89, 45, 23]
c1 = []

while (a1!=[]) & (b1!=[]):
    if(a1[0]>b1[0]):
        c1.append(a1[0])
        a1=a1[1:]
    else:
        c1.append(b1[0])
        b1=b1[1:]
if(a1!=[]):c1=c1+a1
if(b1!=[]):c1=c1+b1
text = ("Sắp xếp mảng theo thứ tự giảm dần từ 2 mảng sắp xếp giảm dần cho trước: {}").encode("utf8")
print("in ra ket qua: {} ", c1)