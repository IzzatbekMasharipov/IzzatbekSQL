task 1
txt='abcabcabcdeabcdefabcdefg'
unli=['a','u','i','e','o']
index=2
while index<len(txt)-1:
    if txt[index] not in unli:
        txt=txt[:index+1] + '_' + txt[index+1:]
        unli.append(txt[index])
        index+=4
    else: index+=1
print(txt)
task 2
n=int(input("n sonini kiriting: "))
for i in range(n):
    print(i*i)
task 3
n=int(input(" n sonini kiriting: "))
raqam=1
while raqam<=n:
    print(raqam)
    raqam+=1
--task 4
n=int(input("n sonini kiriting: "))

for i in range(1,n+1):
    for j in range(1,i+1):
        print(j,end=' ')

    print()
-- task 5
n=int(input("n sonini kiriting: "))
summa=0
for i in range(1,n+1):
    summa+=i

print(summa)
task 6
n=int(input('n sonini kiriting: '))

for n in range(1,n+1):
    print(f"\n{n} karra jadvali")
    for i in range(1,11):
        print(f"{n} x {i} ={n*i}")
task 7
numbers = [12, 75, 150, 180, 145, 525, 50]

for num in numbers:
    if num>500 :
        break
    if num%5==0 and num<=150:
        print(num)
-- task 8
n=int(input("n sonini kiriting: "))

for i in range(n,0,-1):
    for j in range(i,0,-1):
        print(j,end=' ')
    print()
--task 9
list1 = [10, 20, 30, 40, 50]



for i in range(len(list1)-1,-1,-1):
    print(list1[i])
-- task 10
for i in range(-10,0):
    print(i)
-- task 11
for i in range(5):
    print(i)
print("Done!")

i=0
while True:
    if i>4:
        break
    else:
        print(i)
        i+=1
print("Done!")
-- task 12
sanoq=0
for i in range(1,50):
      
    for j in range(1,i+1):
        if i%j==0:
            sanoq+=1

    if sanoq==2 and 25<=i<=50:
        print(i)
    sanoq=0
--task 13
fin1=0
fin2=1
for _ in range(10):
    print(fin1)
    son=fin1
    fin1=fin2
    fin2=fin1+son

ikinchi usull
a=0
b=1
for _ in range(10):
    print(a)
    a,b=b,a+b
 --task 14
n=int(input("n sonini kiriting: "))
summa=1
for i in range(1,n+1):
    summa*=i

print(f"{n}!={summa}")
--task 15
list1=[1,1,2]
list2=[2,3,4]
list3=[]
for i in list1:
    if i not in list2:
        list3.append(i)

for i in list2:
    if i not in list1:
        list3.append(i)
print(list3)
