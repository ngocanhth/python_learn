a = int(input('a='))
b = int(input('b='))

print(type(a))

c = a + b
print(c)

print(type(c))


value = input('Enter something => ')
print('You just entered', value)
print('__repr__ method: %r' %value)

print('day la gia tri a', a, "day la gia tri b", b)

print("in gia tri voi placeholder: %d con day la gia tri %d" %(7, 9))

# d la so nguyen
# f la so thuc 
# s la string

print("You have {} apples.".format(5))

# this will print:
# You have 5 apples.

apples = 5
plural = "s" if apples != 1 else ""

print("You have {} apple{}.".format(apples, plural))

print(f"tiếng  việt {apples} {plural}")
print (f" placeholder {apples} gia tri b la {plural} ")

