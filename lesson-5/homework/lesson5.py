-- task 1
print("kabisa yilini aniqlash dasturi")
yil=int(input("yilni kiriting: "))
if yil > 0 and type(yil)==int:
    if ((yil%4==0 and yil%100!=0) or yil%400==0):
        print(f"siz kiritgan yil kabisa yili--->{yil}")
    else:
        print(f"siz kiritgan yil kabisa yili emas--->{yil}")
else:
    print(f"siz noto'g'ri malumot kiritdingiz!!!")
-- task 2
son=int(input("0 dan katta son kiriting: "))
if ((son%2!=0) or (son%2==0 and 6<=son<=20)):
    print("Weird")
elif ((son%2==0 and 2<=son<=5)or(son%2==0 and son>20)):
    print("Not Weird")
--task 3
print("a va b sonlar orasidagi juft sonlarni topish")
a=int(input("birinchi sonini kiriting: "))
b=int(input("ikkinchi sonini kiriting: "))
if a>b: 
    a=a+b
    b=a-b
    a=a-b


if a<b:
    if   a%2==0 and b%2==0:      #2 va 10
        list1=list(range(a,b+1,2))
    elif a%2==0 and b%2!=0:    #2 va 11
        list1=list(range(a,b+1,2))
    elif a%2!=0 and b%2==0:   #3 va 10
        list1=list(range(a+1,b+1,2))
    elif a%2!=0 and b%2!=0:   #3 va 11
        list1=list(range(a+1,b+1,2))


print(list1)
