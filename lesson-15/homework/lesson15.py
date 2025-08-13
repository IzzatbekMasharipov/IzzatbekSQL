task_1
import sqlite3
buyruq="""
create table if not exists Roster(Name text, Species text,Age int)
"""
conn=sqlite3.connect('my_data.db')
cursor=conn.cursor()
cursor.execute(buyruq)
conn.close()
task_2
import sqlite3
buyruq="""
insert into Roster values('Benjamin Sisko','Human',40),
('Jadzia Dax','Trill',300),
('Kira Nerys','Bajoran',29)
"""
conn=sqlite3.connect('my_data.db')  
cursor=conn.cursor()
cursor.executescript(buyruq)
conn.commit()
conn.close()
task_3
import sqlite3
buyruq="""
update  Roster
set name='Ezri Dax'
where age=300 
"""
connect=sqlite3.connect('my_data.db')
cursor=connect.cursor()
cursor.execute(buyruq)
connect.commit()
connect.close()
task_4
import sqlite3
buyruq="""
select name,age from Roster where Species='Bajoran'
"""
with sqlite3.connect('my_data.db') as conn:
    cursor=conn.cursor()
    natija=cursor.execute(buyruq)
    print(natija.fetchall())
