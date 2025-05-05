--task -1
--BULK INSERT -sqldatashqi fayllardan  katta hajmdagi malumotlarni bazaga tez va samarali yuklash uchun ishlatiladi masalan tekst fayllar(.txt,.csv) 
--task -2
--sql serverda import qilinadigan 4 fayl formati CSV,TEXT,EXCEL,XML
--TASK -3
create table Products (ProductID int primary key,ProductName varchar(50),Price decimal(10,2))
--task -4
insert into Products values(1,'olma',250),(2,'behi',350),(3,'uzum',650)
--task-5
--null bu qiymat mavjud emasligini bildiradi yani maydonda hech qanday malumot saqlanmaydi,not null esa maydonda har doim malumot bo'lishini kerakligini bildiradi yani bo'sh qoldirib bo'lmaydi
--task -6
alter table Products
add constraint UQ_ProductName unique (ProductName)
--task-7
--sql serverda izoh qo'shish uchun --yoki /*,*/belgilaridan foydalaniladi
--task-8
create table Categories(CategoryID int primary key,CategoryName varchar(50) unique)
--task -9
--Identity bu sql serverda identity ustuni avtamatik ravishda unikal qiymatlar hosil qiladi,identityning defuolt qiymati 1ga oshiradi,
--identity (25,2)  bu yerda boshlanish qiymat 25 va har safar yangi qator qo'shilganda 2 ga ortib boladi
--task -10

bulk insert Products 
from 'C:\\DATA\mahsulot.txt'
with (
firstrow=2,
fieldterminator=',',
rowterminator='\n'
);
--task-11

create table Products (ProductID int ,ProductName varchar(50),
Price int,constraint FK_ID foreign key (ProductID) references Categories (CategoryID))
--task --12
--Pimary key har bir qatorni unikal tarzda aniqlaydi,Avtomatik tarzda not null bo'ladi ,har bir jadvalda bitta primary key bo'lishi mumkinasosiy kalit jadvalning unikalligini taminlaydi
--unique key takrorlanmas qiymatlar saqlaydi,lekin primary key bo'lishi shart emas null qiymatga ruxsat berishi mumkin faqat bitta,jadvalda bir nechta unique key bo'lishi mumkin
--task-13
alter table Products
add constraint CH_price check (price>0)
--task -14
alter table Products
add  Stoct int not null
--task -15
update Products
set Price=0
where Prise is null
--task -16
--FOREIGN KEY bu jadvaldagi malumotlarni boshqa jadval bilan bog'lash uchun ishlatadigan malumot butunligi cheklovi 
--task -17
create table Customers (ID int,Name varchar (30),age int check (age>=18))
--task -18
create table baho(id int identity (100,10),age int)
--task -19
create table OrderDetails (ID int,Name int,primary key (ID,Name))
--task -20
--isnull agar ustun null bo'lsa berilgan o'rinbosar qiymatni qo'llaydifaqat ikkita argumentni qabul qiladi null bo'lishi mumkin bo'lgan qiymat va o'rinbosar qiymatqaytarilgan qiymat tipi birinchi argument turiga mos boladi
--coalesce birinchi null bo'lmagan qiymatni qaytaradi bir nechta argument qabul qiladi va ulardan birinchi null bo'lmaganini tanlaydi qaytarilgan qiymat tipi eng yuqori ustuvorlikka ega turga mos bo'ladi
--task -21
create table Empoyess (EmpID int primary key,Email varchar (50) unique)
--task -22
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
