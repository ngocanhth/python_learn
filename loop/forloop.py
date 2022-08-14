
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

next(it_2)

next(it_1)
