task 1
def is_prime(n):
    sanoq=0
    i=n
    while i>=1:
        if n%i==0:
            sanoq+=1
        i-=1
    if sanoq==2:
        print(f"siz kiritgan son {n} tub son")
    else:
        print(f"siz kiritgan son {n} tub son emas")

n=int(input("n sonini kiriting: "))
while n<=0:
    print("kiritilgan son [1:~] oralig'ida bo'lishi kerak! ")
    n=int(input("n sonini kiriting: "))
is_prime(n)

task 2
def digit_summ(n):
    summ=0
    while n>0:
        son=n%10
        summ+=son
        n//=10
    return summ

n=int(input("n sonini kiriting: "))

print(digit_summ(n))
-- task 3
def daraja(n):
    list=[]
    i=2
    while i<=n:
        list.append(i)
        i*=2
    return list


n= int(input("n sonini kiriting: "))
print(daraja(n))

