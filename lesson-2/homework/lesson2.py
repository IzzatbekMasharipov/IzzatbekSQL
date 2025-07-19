--task 1
from datetime import datetime
realdate=datetime.now().year
ism=input("iltimos ismingizni kiriting: ")
tugulgankun=int(input("tug'ulgan yilingizni kiriting: "))
yosh=realdate-tugulgankun
print(f"{ism} siz {yosh} yoshdasiz")
--task 2
txt = 'LMaasleitbtui'
print(txt[::2])
--task 3
txt = 'MsaatmiazD'
print(txt[::2])
print(txt[::-2])
--task 4
txt = "I'am John. I am from London "
boshlanish=txt.find('London')
tugash=txt.find('London')+len('London')
print(txt[boshlanish:tugash])
-- task 5
print('Salom xush kelibsiz teskari dasturga')
satr=input("biror bir matn yoki so'z kiriting: ")
print(satr[::-1])
-- task 6
import string
print('unli harflarni sanash dasturiga xush kelibsiz')
satr=input("biror bir matn kiriting: ").lower()
sanoq=0
unli="uioea"
for belgi in satr:
 if belgi in unli:
    sanoq+=1

print(f"siz kiritgan matnda {sanoq} ta unli bor")
-- task 7
print("maxson topish dasturiga xush kelibsiz")
uzunlik=int(input("nechta son orasida maxson topmoqchisiz: "))
list=[]*uzunlik
for i in range(uzunlik):
    num=int(input(f"ro'yxatigizdagi {i+1}-sonni kiriting: "))
    list.append(num)

maxson=list[0]
for i in range(uzunlik):
    if list[i]>=maxson:
        maxson=list[i]

print(f"siz kiritgan ro'yxatda {maxson} eng katta son")
ikkinchi yol
print("maxson topish dasturiga xush kelibsiz")
uzunlik=int(input("nechta son orasida maxson topmoqchisiz: "))
list=[]*uzunlik
for i in range(uzunlik):
    num=int(input(f"ro'yxatigizdagi {i+1}-sonni kiriting: "))
    list.append(num)

list.sort(reverse=True)

print("siz kiritgan ro'yxatda  eng katta son---> ",list[0])
-- task 8
print("palindrom dasturiga xush kelibsiz: ")
matn=input("istalgan so'z yoki son kiriting: ")
rezalt=matn[::-1]
sanoq=0
for i in range(len(matn)):
    if matn[i]==rezalt[i]:
        sanoq+=1

if sanoq==len(matn):
    print(f"siz kiritgan '{matn}' palindrom")
else:
    print(f"siz kiritgan '{matn}' palindrom emas")
--task 10
import string
import random
while True:
 uzunlik=int(input("parol uzunligini kiriting (parol uzunligi 6 dan uzun bo'lishi kerak): "))
 if uzunlik>=7:
        break
 print("siz uzunlikni noto'g'ri kiritdingiz!!!")

belgi=random.choice(string.punctuation)
raqam=random.choice(string.digits)
harf=random.choice(string.ascii_letters)
belgilar=string.punctuation+string.ascii_letters+string.digits
parol=[belgi,raqam,harf]
for i in range(uzunlik-3):
    num=random.choice(belgilar)
    parol.append(num)
random.shuffle(parol)
parol=''.join(parol)
print(parol)





