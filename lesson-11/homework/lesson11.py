lesoon-11 vazifalari
task 1
pip install virtualenv
virtualenv venv
venv\Scripts\activate
pip install numpy pandas matplotlib

task 2

def add(a,b:int):
    return a+b

def subtract(a,b:int):
    return a-b
def multiply(a,b:int):
    return a*b
def devide(a,b:int):
    try:
        son=a/b
        return son
    except ZeroDivisionError:
        print(f"{a} sonini {b} ga bo'lib bo'lmaydi")

def reverse_string(s:str):
    return s[::-1]
def count_vowesl(s:str):
    vowesl='aeiou'
    sanoq=0
    for i in s.lower():
        if i in vowesl:
            sanoq+=1
    return sanoq
import string_utils
task 3
geometry papkasida 
circle.py faylini ichida
from math import pi,sqrt
def calculate_area(r:float):
    return pi*r*r

def calculate_circumference(r):
    return 2*pi*r

file_operations papkasi
ichida file_reader.py
ichida
def read_file(fayl):
    with open(fayl,'r',encoding='utf-8') as f:
        data=f.read()
        return print(data)
shu fayl bor
file_writer.py
ichida 
def write_file(fayl,content):
    with open(fayl,'w') as f:
        f.write(content)
bor

from  geometry.circle import calculate_area as c,calculate_circumference as uzun
print(c(2))
print(uzun(5))
from file_operations.file_reader import read_file as r
fayl="C:\\Users\\Lenovo\\Desktop\\homework\\asb.txt"
r(fayl)

from file_operations.file_writer import write_file as w
fayl="C:\\Users\\Lenovo\\Desktop\\homework\\asb.txt"
tekst='hello word'
w(fayl,tekst)


