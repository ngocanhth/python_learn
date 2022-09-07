n = 3;
def find(i):
    global final
    for j in range(2):
        final += str(j);
        if(i==n):
            print(final)
        else:
            find(i+1)
        final = final[0:len(final) - 1]

for i in range(0,n+1):
    find(i)
        