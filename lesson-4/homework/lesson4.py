print("dictionaryni baho bo'yicha kamayuvchi va o'suvchi dastur")
--task 1
data={}
n=int(input("necha element kiritmoqchisiz: "))

for i in range(n):
    key=input(f"{i+1}-kalitni kiriting: ")
    value=int(input(f"{i+1}-qiymatni kiriting: "))
    data[key]=value

print("tartiblash dasturi")
print("1-ortuvchi")
print("2-kamayuvchi")
tanlov=int(input("tanlang (1 yoki 2) : "))
if tanlov==1:
    tartiblangan=dict(sorted(data.items(),key=lambda item:item[1]))
elif tanlov==2:
    tartiblangan=dict(sorted(data.items(),key =lambda item:item[1],reverse=True))
else: 
    print("siz noto'gri tanlov qildingiz default natija ortuvchi tartib")
    tartiblangan=dict(sorted(data.items(),key=lambda item:item[1]))

print("\nsaralangan dictanery")
for k,v in tartiblangan.items():
    print(f"{k}:{v}")
--task 2
a={0: 10, 1: 20}
a[2]=30
print(a)

a={0: 10, 1: 20}
a.update({2:30})
print(a)
-- task 3
dic1 = {1: 10, 2: 20}
dic2 = {3: 30, 4: 40}
dic3 = {5: 50, 6: 60}
dic4=dic1|dic2|dic3
print(dic4)
-- task 4
print("n gacha bo'lgan dictanery yaratish dasturi")
n=int(input("dictanery necha elementdan iborat bo'lsin: "))
data={}
for i in range(n):
    i=i+1
    data[i]=i*i
print(data)
-- task 5
print("n gacha bo'lgan dictanery yaratish dasturi")
n=int(input("dictanery necha elementdan iborat bo'lsin: "))
data={}
for i in range(1,n+1):
  
    data[i]=i*i
print(data)
set boyicha mashq
-- task 1
my_set={1,2,3,4,4}
print(my_set)

n=int(input("set uzunligini kiriting: "))
a=set()
for i in range(n):
    num=int(input(f"setning {i+1}-elementini kiriting: "))
    a.add(num)

print(a)
-- task 2
a=set()
n=int(input("set uzunligini kiriting: "))
for i in range(n):
    num=input(f"setning {i+1}-elementini kiriting: ")
    a.add(num)
for item in a:
    print(item)
-- task 3
a={1,2,3,4,5,6,7,9}
a.add(10)
print(a)
a.update([6,11,15])
print(a)
 -- task 4
my_set={1,2,3,4,5,6,7,8,9,10}
my_set.remove(10)
print(my_set)
my_set.pop()
print(my_set)
print(my_set.discard(15))
--task 5
a=set()
n=int(input("set uzunligini kiriting: "))
for i in range(n):
    num=int(input(f"setning {i+1}-elementini kiriting: "))
    a.add(num)
print("yaratilgan setdan keraksiz elementni o'chirish")

sanoq=0
keraksiz=int(input("keraksiz elementni kiriting: "))
if keraksiz in a:
    a.discard(keraksiz)
else: 
    print(f"siz kiritgan {keraksiz} bu set ichida yuq")

print("sizning setingiz",a)
