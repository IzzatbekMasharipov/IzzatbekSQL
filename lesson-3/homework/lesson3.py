# uyga vazifa
# task 1
mevalar=['olma','banan','gilos','xujja','uzum']
print(mevalar[2])
# task 2
uzunlik1=int(input("1-list uzunligini kiriting: "))
uzunlik2=int(input("2-list uzunligini kiriting: "))
list1=[]
list2=[]
for i in range(uzunlik1):
    number=int(input(f"{i+1}-elementni kiriting: "))
    list1.append(number)

for i in range(uzunlik2):
    number=int(input(f"{i+1}- elemetni kiriting: "))
    list2.append(number)

natija=list1+list2
print("kerakli natija: ",natija)
# task 3
#yangi list yaratish
while True:
    uzunlik=int(input("list uzunligini kiriting: "))
    if uzunlik>2 and uzunlik%2!=0:
        break
    else : 
        print("siz kiritgan uzunlik 2 dan katta va toq son bo'lishi kerak!!!")
list=[]

for i in range (uzunlik):
    number=int(input(f"{i+1}-elementni kiriting:"))
    list.append(number)

list2=[list[0],list[uzunlik//2],list[uzunlik-1]]

print(list2)
# task 4
list=["qasos","yengilmas","notanish","qaytmas","ajdod"]
listtuple=tuple(list)
print(listtuple)
# task 5
uzunlik=int(input("list uzunligini kiriting: "))
list=[]
for i in range(uzunlik):
    shahar=input(f"{i+1}-elmentni kiriting: ")
    list.append(shahar)

shahar="bu ro'yhatta Paris yuq"
for i in range(uzunlik):
    if list[i]=="Paris":
        shahar="Paris"

print(shahar)
# task 6
uzunlik=int(input("list uzunligini kiriting: "))
list=[]
for i in range(uzunlik):
    number=int(input(f"listning {i+1}-elementini kiriting: "))
    list.append(number)
newlist=list*2
print(newlist)
# task 7
list=[1,2,3,4,5,6,7]
num=list[0]
list[0]=list[len(list)-1]
list[len(list)-1]=num
print(list)
# task 8
my_tuple=tuple(range(1,11))
print(my_tuple)
sl=slice(3,8)
list=my_tuple[sl]
print(list)
# task 9
list=["red","blue","green","yellow","white"]
sanoq=list.count("blue")
print(f"bu ro'yxatta blue rang {sanoq} ta ishlatilgan")
# task 10
my_tuple=("cat","dog","lion","tiger")
if "lion" in my_tuple:
    print(my_tuple.index("lion"))
else: print("bu matnda lion nomi yo'q")
# task 11
first=(1,2,3)
sekond=(4,5)
new=first+sekond
print(new)
# task 12

list=[1,2,3,4,5,6,7]
mytuple=(1,2,3,4,5,6,7)
print(len(list))
print(len(mytuple))
# task 13
mytuple=(1,2,3,4,5)
list=list(mytuple)
print(list)
# task 14
mytuple=(3,8,9,17,1,6,-9)
maxnum=mytuple[0]
minnum=mytuple[0]
for i in range(len(mytuple)):
    if mytuple[i]>=maxnum:
        maxnum=mytuple[i]

for i in range(len(mytuple)):
    if mytuple[i]<=minnum:
        minnum=mytuple[i]

print(f"berilgan ro'yxatda eng katta son ----> {maxnum}")
print(f"berilgan ro'yxatda eng kichik son ----> {minnum}")
# task 15
mytuple=('banana','anor','uzum','apple','shaftoli')
print(mytuple)
print(mytuple[::-1])
list=list(mytuple)
list.reverse()
reversedtuple=tuple(list)
print(reversedtuple)
