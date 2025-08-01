exception handling
task 1
try:
   son=int(input("biror son kiriting: "))
   natija=son/0
   print("natija---> ",natija)
except ZeroDivisionError:
   print("siz sonni zeroga bo'laolmaysiz")
finally:
   print("dastur yakunlandi")
task 2
try:
    son=input('butun son kiriting: ')
    print(int(son))
except ValueError:
    print("siz butun son kiritmadingiz")
finally:
    print("dastur yakunlandi")
task 3
try:

 with open("C:\\Users\\Lenovo\\Desktop\\homework\\homework32.txt",'r') as f:
    print(f.read())
except FileNotFoundError:
   print("bunday fayl topilmadi")
finally:
   print("dastur yakunlandi")
task 4
try :
    son=input("1-sonni kiriting: ")
    son2=input("2-sonni kiriting: ")
    print(son+son2**2)
except TypeError:
    print("siz noto'g'ri belgi kiritdingiz: ")
task 5
try :
    with open("C:\\Users\\Lenovo\\Desktop\\homework",'w') as f:
        f.write('yangi yozuv22')
except PermissionError:
 print("sizda faylga yozishda huquq yo'q")
task 6
try:
    list=[1,2,3,4,5]
    print(list[6])
except IndexError:
    print(f"bunday index mavjud emas ")
task 7
try:
    x=1
    while x>0:
        print(x)
        
except KeyboardInterrupt:
    print("foydalanuvchi dasturni to'xtatdi") 
task 8
try:
    x=10
    y=0
    print(x/y)
except ArithmeticError:
    print("arifmetik xato kuzatildi")
task 9
try:
    bayt=b'\xff\xfe\xfa\xfb'
    matn=bayt.decode('utf-8')
except UnicodeDecodeError:
    print("xatolik")
task 10
try:
    x=10
    x.appened(5)
except AttributeError:
    print("xatolik")
file input/output 
Exercises
task 1
with open("C:\\Users\\Lenovo\\Desktop\\homework\\mmm.txt",'r',encoding='utf-8') as matn:
    data=matn.read()
    print(data)
task 2
n=int(input("nechta qator uqilsin: "))
with open("C:\\Users\\Lenovo\\Desktop\\homework\\homework7.txt",'r',encoding='utf-8') as fayl:
  
 for i in range(n):
    qator=fayl.readline()
    print(qator.strip())
task 3
with open("C:\\Users\\Lenovo\\Desktop\\homework\\mmm.txt",'a') as f:
    f.write("\nSamirbek ")

with open("C:\\Users\\Lenovo\\Desktop\\homework\\mmm.txt",'r',encoding='utf-8') as f:
    matn=f.read()
    print(matn) 
task 4
n=int(input("oxirgi nechta qator uqilsin: "))
with open("C:\\Users\\Lenovo\\Desktop\\homework\\homework7.txt",'r') as f:
    qatorlar=f.readlines()
    qator=qatorlar[-n:]

for i in qator:
 print(i.strip())
task 5
list=[]
with open ("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'r') as f:
    for i in f:
        list.append(i.strip())
print(list)
task 6
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'r',encoding='utf-8') as f:
    qator=[line.strip() for line in f]
print(qator)
task 7
qator=[]
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'r',encoding='utf-8') as f:
    for line in f:
        qator.append(line)
        
print(qator)
task 8
import string
with open("C:\\Users\\Lenovo\\Desktop\\homework\\a.txt",encoding='utf-8') as fayl:
    qator_raqam=1
    for line in fayl:
       yangiqator=""
       for belgi in line:
           if belgi in string.punctuation:
               yangiqator+=" "
           else:
               yangiqator+=belgi
       
       sozlar=yangiqator.strip().split()
       
       uzunsozlar=[]

       maxuzunlik=0
       for soz in sozlar:
          
           uzunlik=len(soz)
           if uzunlik>maxuzunlik:
               uzunsozlar=[soz]
               maxuzunlik=uzunlik
           elif uzunlik==maxuzunlik:
               uzunsozlar.append(soz)

       if uzunsozlar:
           print(f"Qator {qator_raqam} eng uzun so'z: ",", ".join(uzunsozlar))
           qator_raqam+=1
task 9

with open("C:\\Users\\Lenovo\\Desktop\\homework\\a.txt",'r',encoding='utf-8') as f:
    sanoq=1
    for i in f:
        if i.strip():
            print(i.strip())
            sanoq+=1
 
print(f"sizning faylingizda {sanoq} ta qator bor")
task 10
import string 

with open("C:\\Users\\Lenovo\\Desktop\\homework\\a.txt",'r',encoding='utf-8') as f:
    data=f.read()
    for i in string.punctuation:
        data=data.replace(i,' ')
    
    data=data.replace('\n',' ')
    ls=data.split(' ')
    res={}
    for word in ls:
        if word!='':
            if word.lower() not in res.keys():
                res[word.lower()]=1
            else:
                res[word.lower()]+=1

tartiblangan=dict(sorted(res.items(),key=lambda item:item[1],reverse=True))
list2=list(res.items())
list2.sort(key=lambda x:x[1],reverse=True)
print(list2)
print(tartiblangan)

task 11
with open("C:\\Users\\Lenovo\\Desktop\\homework\\a.txt",'r',encoding='utf-8') as f:
    matn=f.read()

print(len(matn))
import os
hajm=os.path.getsize("C:\\Users\\Lenovo\\Desktop\\homework\\a.txt")
print(hajm)
task 12
mevalar=['olma','behi','anor']
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'w') as f:
    for meva in mevalar:
        f.write(meva+' ')

task 13
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt") as f:
    data=f.read()

with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam1.txt",'a') as k:
    for i in data:
        k.write(i)
task 14
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'r',encoding='utf-8') as f,open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam1.txt",'r',encoding='utf-8') as g:
    qataorlar1=f.readlines()
    qqatorlar2=g.readlines()
    minuzunlik=min(len(qataorlar1),len(qqatorlar2))

    for i in range(minuzunlik):
        birinchi=qataorlar1[i].strip()
        ikkinchi=qqatorlar2[i].strip()
        print(f"{birinchi}-{ikkinchi}")
task 15
import random
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'r',encoding='utf-8') as f:
    qator=f.readlines()
    son=random.randint(0,len(qator)-1)
    print(son)
    print(qator[son])

task 16
fayl=open("C:\\Users\\Lenovo\\Desktop\\homework\\homework8.txt",'r')

if fayl.closed:
    print("fayl yopilgan holatda")
else:
    print("fayl ochiq holatda")

fayl.close()
if fayl.closed:
    print("fayl yopilgan holatda")
else:
    print("fayl ochiq holatda")
task 17
with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'r',encoding='utf-8') as f:
    qator=f.readlines()

with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam1.txt",'a')as d:
       for i in range(len(qator)):
         d.write(qator[i].strip())
task 18
import re
def sozsoni(fayl):
    try:
        with open(fayl,'r',encoding='utf-8') as f:
            matn=f.read()
            matn=re.findall(r'\b\w+\b',matn)
            return len(matn)
    except FileNotFoundError:
        print("bunday fayl topilmadi")

fayl='C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt'
print(sozsoni(fayl))
2 usul 

import string
def sozsoni(fayl):
    try:
        list=[]
        with open(fayl,'r',encoding='utf-8') as f:
            tekst=f.read()
            simbool=string.punctuation
            for i in simbool:
                tekst=tekst.replace(i,' ')
            tekst=tekst.replace('\n',' ')
            tekst=tekst.split()
            return len(tekst)
                
            

    except FileNotFoundError:
        print("bunday fayl topilmadi")

fayl='C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt'
print(sozsoni(fayl))
task 19
import os

# Matnli fayllar joylashgan papkaning nomi
papka_nomi = "matn_fayllar"

# Natijaviy belgilar ro‘yxati
belgilar_royxati = []

# Fayllar ro‘yxatini olamiz
for fayl_nomi in os.listdir(papka_nomi):
    if fayl_nomi.endswith(".txt"):
        fayl_yoli = os.path.join(papka_nomi, fayl_nomi)
        with open(fayl_yoli, "r", encoding="utf-8") as fayl:
            matn = fayl.read()
            # Har bir belgini ro‘yxatga qo‘shamiz
            belgilar_royxati.extend(list(matn))

# Natijani chiqaramiz
print("Topilgan belgilar ro'yxati:")
print(belgilar_royxati)
task 20
import string

harflar=string.ascii_uppercase
for i in harflar:

    with open (f"C:/Users/Lenovo/Desktop/homework/{i}.txt",'w') as f:
        f.write(f"{i} harfli fayl yaratildi")
task 21
import string

harflar=string.ascii_uppercase
soni=5

with open("C:\\Users\\Lenovo\\Desktop\\homework\\raqam.txt",'w') as f:
    for i in range(0,len(harflar),soni):
        qator=harflar[i:i+soni]
        f.write(" ".join(qator)+'\n')













