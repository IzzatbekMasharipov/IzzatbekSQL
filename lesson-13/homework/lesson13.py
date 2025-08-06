task 1
import datetime
sana=input("tug'ulgan sanagizni kiriting [YYYY-MM-DD formatida]: ")
sana=datetime.datetime.strptime(sana,'%Y-%m-%d')
bugun=datetime.datetime.today()


yil=bugun.year-sana.year

oy=bugun.month-sana.month

kun=bugun.day-sana.day

if kun<0:
    oy-=1
    kun+=(datetime.datetime(bugun.year,bugun.month,1)-datetime.datetime(bugun.year,bugun.month-1,1)).days

if oy<0:
    yil-=1
    oy+=12

print(f"sizning yoshingiz: {yil} yosh {oy} oy {kun} kun")
task 2
from datetime import datetime
tugulgan_sana=input("tug'ulgan sanangizni kiriting [YYYY-MM-DD] formatida: ")
sana=datetime.strptime(tugulgan_sana,'%Y-%m-%d')
now=datetime.today()

oy=12-now.month+sana.month
kun=sana.day-now.day
if kun<0:
    oy-=1
    kun+=(datetime(now.year+1,sana.month,1)-datetime(now.year+1,sana.month-1,1)).days

print(f"sizning tug'ulgan kuningizga {oy} oy {kun} kun qoldi")

task 3
from datetime import datetime,timedelta

sana_vaqt=input("uchrashuv sanasi va vaqtini kiriting[YYYY-MM-DD H:M]: ")
boshlanish=datetime.strptime(sana_vaqt,'%Y-%m-%d %H:%M')
soat=int(input("necha soat davom qiladi: "))
minut=int(input("qancha minut davom qiladi: "))

dovomiylik=timedelta(hours=soat,minutes=minut)
tugash=boshlanish+dovomiylik
print("uchravush tugash vaqti : ",tugash.strftime("%Y-%m-%d %H:%M"))


task 4
from datetime import datetime
import pytz

# Foydalanuvchidan sana, vaqt va joriy vaqt zonasini so‘rash
sana_va_vaqt = input("Sana va vaqtni kiriting (YYYY-MM-DD HH:MM formatida): ")
joriy_zona = input("Joriy vaqt zonangizni kiriting (masalan: Asia/Tashkent): ")
maqsad_zona = input("O‘zgartirmoqchi bo‘lgan vaqt zonasi (masalan: US/Eastern): ")

# Matnni datetime formatiga o‘tkazish
naive_datetime = datetime.strptime(sana_va_vaqt, "%Y-%m-%d %H:%M")

# Joriy vaqt zonasini qo‘llash
local_timezone = pytz.timezone(joriy_zona)
local_datetime = local_timezone.localize(naive_datetime)

# Maqsad vaqt zonasiga o‘zgartirish
target_timezone = pytz.timezone(maqsad_zona)
converted_datetime = local_datetime.astimezone(target_timezone)

# Natijani chiqarish
print("O‘zgartirilgan sana va vaqt:", converted_datetime.strftime("%Y-%m-%d %H:%M (%Z)"))
task 5
from datetime import datetime
import time
import os
kelajak=input("kelajakdagi sanani kiriting [YYYY-MM-DD H:M:S] formatida: ")
try:
    vaqt=datetime.strptime(kelajak,'%Y-%m-%d %H:%M:%S')
    while True:
        now=datetime.now()
        qolgan_vaqt=vaqt-now
        if qolgan_vaqt.total_seconds()<=0:
            print("\nvaqt tugadi")
            break
        umumiysoniya=int(qolgan_vaqt.total_seconds())
        days=qolgan_vaqt.days
        seconds_in_day=umumiysoniya-(days*24*60*60)

        hours=seconds_in_day//3600
        minutes=(seconds_in_day%3600)//60
        seconds=(seconds_in_day%3600)%60
        print(f"qolgan vaqt: {days} kun {hours} soat {minutes} daqiqa {seconds} soniya",end='\n')
        time.sleep(1)
        os.system('cls')


        
except ValueError:
    print("kiritilgan sana formatga mos emas")
task 6
import re
email=input("email manzilingizni kiriting: ")

if len(email)>0:
    email1=re.split('@',email)
    if len(email1)==2:
        if re.findall('@[a-z].+',email):
           print(re.findall('@[a-z].+',email))
        else:
            print("noto'g'ri email kiritilgan ")
    else:
        print("noto'g'ri email kiritilgan ")
else:
   print("noto'g'ri email kiritilgan ")
    

task 7
import re
tel=input('telefon raqamingizni kiriting: [97-000-00-00]: ')
if len(tel)==10:
    parts=re.findall("[0-9]{3}|[0-9]{4}",tel)
    print(f"({parts[0]})-{parts[1]}-{parts[2]}")
else:
    print("siz telefon raqamini not'g'ri kiritdingiz")
task 8
import re
parol=input("parolni kiriting (parol uzunligi 7dan katta bo'lsin): ")

uzunlik=len(parol)
katta_harf=re.findall('[A-Z]',parol)
kichik_harf=re.findall('[a-z]',parol)
raqam=re.findall('[0-9]',parol)
if uzunlik>7 and len(katta_harf)>0 and len(kichik_harf)>0 and len(raqam)>0:
    print(f"siz kiritgan {parol} ishonchli")
else:
    print(f"siz kiritgan {parol} ishonsiz")
task 9
import re
soz=input("qidirilayotgan sozni kiriting: ")
txt="Men suzishga bordim kecha,juda ajoyib kecha bo'ldi"
print(re.findall(soz,txt))
task 10
import re
txt=input("biror bir matn kiriting: ")

sana=r'\b\d{4}-\d{2}-\d{2}\b|\b\d{2}/\d{2}/\d{4}\b|\b\d{2}.\d{2}.\d{4}\b}'
parts=re.findall(sana,txt)


for part in parts:
    print(part)
