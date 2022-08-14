from email.policy import default


length = 3
intera = [x for x in range(length)] # ==> tupple
intera1 = (x for x in range(length)) # ==> interator
print(intera)
print('interator object: ', intera1)

# interator object khong the truy xuat truc tiep ma 
# chi truy xuat dc tung phan tu bang ham next

print(next(intera1))
print(next(intera1))
print(next(intera1))

# interator cung gap van de tham chieu

it_1 = iter('kteam')

it_2 = it_1

print(next(it_2))

print(next(it_2))

print(next(it_2))

print(next(it_1))

print(next(it_1))

# next(it_2)

# next(it_1)


# ===================


print("Một số hàm hỗ trợ cho iterable object trong Python")
print(sum([1, 6, 3]))

intera = (x for x in range(3))

print("intera: ", sum(intera, -2)) # tong 0 + 1 + 2 -2 = 1

# print(next(intera)) # khong next dc vif sum da dua con tro toi cuoi danh sach roi
# do đó nếu bạn đưa vào một iterator. Thì bạn sẽ không sử dụng iterator đó được nữa.
print(sum(iter([6, 3, 9])))

# tim gia tri lon nhat
# truyen vao 1 interable

print("gia tri lon nhat ",max([6, 3, 9]))
print("gia tri nho nhat ",min([6, 3, 9]))

print(max([], default="Khong tim dc gia tri lon nhat"))

# dang sau thi ko the truyen gia trui default

print(max(4,56,7,8))

# saop xep tupple

sapxep = sorted([1, 6, 7, 2], )

print(sapxep)

print(sorted(sapxep, reverse=True))