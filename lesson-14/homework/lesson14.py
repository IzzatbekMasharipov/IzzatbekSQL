task 1

import json

with open('students.json') as f:
    data=json.load(f)

for dect in data['students']:
    print(dect['name'])
    print('Age = ',dect['age'])
    print('Grade = ',dect['grade'])
    print('city = ',dect['address']['city'])
    print('-'*30)

task 3
import os
import json
filename='book.json'

if not os.path.exists(filename):
  with open(filename,'w') as f:
    json.dump([],f)

def load_book():
  with open(filename) as f:
    return json.load(f)
  

def save_book(book):
  with open(filename,'w') as f:
    json.dump(book,f,indent=2)

def add_book():
  kitob_nomi=input("Kitob nomini kiriting:")
  muallif=input("muallifni nomini kiriting: ")
  yil=input("Nashr yilini kiriting: ")
  book=load_book()
  book.append({"Kitob nomi":kitob_nomi,"Muallif":muallif,"Nashr yili":yil})
  save_book(book)
  print("Kitob muvaffaqiyatli qo'shildi")

def uzgartirish():
  kitob_nomi=input("uzgartirmoqchi bo'lgan kitob nomini kiriting: ")
  books=load_book()
  for book in books:
    if book["Kitob nomi"]==kitob_nomi:
      book['Muallif']=input("yangi muallif nomini kiriting: ")
      book['Nashr yili']=input("yangi nashr yilini kiriting: ")
      save_book(books)
      print("kitob yangilandi")
      return
    else:
      print("bunday nomda kitob topilmadi")

def delet_book():
  kitob_nomi=input("uchirmoqchi bo'lgan kitob nomini kiriting: ")
  books=load_book()
  for book in books:
    if    book['Kitob nomi']==kitob_nomi:
      del book['Kitob nomi']
  save_book(books)
  print("Kitob o‘chirildi.")




  






def menu():
 while True:
    print("\n1.Kitob qo'shish")
    print("2.Kitobni yangilash")
    print("3.Kitobni uchirish")
    print("4.Chiqish")
    tanlov=input("Tanlovingiz: ")
    if tanlov=='1':
      add_book()
    elif tanlov=='2':
      uzgartirish()
    elif tanlov=='3':
      delet_book()
    elif tanlov=='4':
      break
    else:
      print("noto'g'ri tanlov")
      
      
      break
menu()
task 2
import requests

# API kalitingizni bu yerga kiriting
api_key = "43cb027f0eb4b9687e67a735f0177e47"
city = "Tashkent"
url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&appid={api_key}&units=metric"

# So‘rov yuborish
response = requests.get(url)

# Ma’lumotlarni JSON formatida olish
data = response.json()

# Tegishli ob-havo ma’lumotlarini chiqarish
if response.status_code == 200:
    temperature = data["main"]["temp"]
    humidity = data["main"]["humidity"]
    description = data["weather"][0]["description"]

    print(f"Shahar: {city}")
    print(f"Harorat: {temperature}°C")
    print(f"Namlik: {humidity}%")
    print(f"Tavsif: {description}")
else:
    print("Ma’lumotlarni olishda xatolik yuz berdi.")
task 4
import requests
import random

# OMDb API kalitingizni bu yerga kiriting
api_key = "SIZNING_API_KALITINGIZ"

# Foydalanuvchidan janrni so‘rash
genre = input("Qaysi janrdagi filmni tomosha qilmoqchisiz? (masalan: Action, Comedy, Drama): ")

# OMDb API janr bo‘yicha to‘g‘ridan-to‘g‘ri qidiruvni qo‘llab-quvvatlamaydi,
# shuning uchun oldindan ba’zi mashhur filmlar ro‘yxatini yaratamiz
sample_movies = [
    "Inception", "The Matrix", "Titanic", "The Godfather", "Forrest Gump",
    "The Dark Knight", "Gladiator", "Interstellar", "Fight Club", "Pulp Fiction"
]

# Tasodifiy film tanlash
random_movie = random.choice(sample_movies)

# API orqali film ma’lumotlarini olish
url = f"http://www.omdbapi.com/?t={random_movie}&apikey={api_key}"
response = requests.get(url)
data = response.json()

# Janr mosligini tekshirish va natijani chiqarish
if genre.lower() in data["Genre"].lower():
    print(f"Tavsiya etilgan film: {data['Title']}")
    print(f"Janr: {data['Genre']}")
    print(f"Izoh: {data['Plot']}")
    print(f"IMDB reytingi: {data['imdbRating']}")
else:
    print(f"Kechirasiz, '{random_movie}' filmi '{genre}' janriga mos emas. Qayta urinib ko‘ring.")



