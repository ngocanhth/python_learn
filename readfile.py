from regex import B

#  co 3 cach doc read toan bo, readline tung dong va readlines ket qua thanh list
with open ('vd1.txt', encoding='UTF8') as f:
    # a = f.read()
    # b = f.readline()  # muon doc tuc dong 1 ma co nhieu dong thi dung vong lap
    # c = f.readlines()
    # d = f.read().split()
    number = f.read().split()
# print(a) 
print("======")
# print(b) 
print("======")
# print(c)
# print("======")
# print(d)
print("ghi vao file")
s=int(number[0])+int(number[1])
with open ('vd10.txt', 'w') as f:
    # Chi write dc kieu string khong writedc so
    # f.write(str(int(number[0])+int(number[1])))
    #  chen them tien to f - format
    f.write(f'{s}')