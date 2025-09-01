task 1
import numpy as np
a=[12.23,13.32,100,36.32]
b=np.array(a)
b
task 2
import numpy as np
matrix=[]
value=2
for i in range(3):
    row=[]
    for j in range(3):
        row.append(value)
        value+=1
    matrix.append(row)
matrix=np.array(matrix)
print(matrix)
task 3

import numpy as np
matrix=[]
j=0
for i in range(10):
    matrix.append(j)
matrix=np.array(matrix)
matrix[6]=11
matrix
task 4
import numpy as np
matrix=[]

for i in range(12,38):
    matrix.append(i)
matrix=np.array(matrix)
matrix
task 5
import numpy as np
matrix=[1, 2, 3, 4]
matrix=np.array(matrix).astype(float)
matrix
task 6
import numpy as np

# Fahrenheit darajalarini ifodalovchi NumPy massiv (Celsiusga aylantiriladi)
fahrenheit_values = np.array([0, 12, 45.21, 34, 99.91, 32])

# Fahrenheit → Celsius formulasi: C = (F - 32) * 5/9
celsius_converted = (fahrenheit_values - 32) * 5/9

# Celsius darajalarini ifodalovchi NumPy massiv (Fahrenheitga aylantiriladi)
celsius_values = np.array([-17.78, -11.11, 7.34, 1.11, 37.73, 0.])

# Celsius → Fahrenheit formulasi: F = C * 9/5 + 32
fahrenheit_converted = celsius_values * 9/5 + 32

# Natijalarni chiqaramiz
print("Values in Fahrenheit degrees:", fahrenheit_values)
print("Values in Centigrade degrees:", celsius_values)
print("Values in Centigrade degrees:", celsius_converted)
print("Values in Fahrenheit degrees:", fahrenheit_converted)
task 7
import numpy as np
arr=np.array([10, 20, 30])
list=[40,50,60,70,80,90]
arr=arr.tolist()
yangi=arr+list
yangi=np.array(yangi)
task 8
import numpy as np
import random as rd 
list=[]

for i in range(10):
    a=rd.randint(1,20)
    list.append(a)

arr=np.array(list)

mean=arr.mean()
min_array=np.min(arr)
max_array=np.max(arr)
median=np.median(arr)
std_array=np.std(arr)
print("massiv : ",arr)
print("massiv min : ",min_array)
print("massiv max : ",max_array)
print("massiv median : ",median)
print("massiv standart og'ish : ",std_array)
task 9
import numpy as np
import random 
matrix=[]
for i in range(10):
    row=[]
    for j in range(10):
        row.append(random.randint(-20,20))
    matrix.append(row)
matrix=np.array(matrix)
max_array=np.max(matrix)
min_array=np.min(matrix)
print("massiv-----> ",matrix)
print("min_massiv-----> ",min_array)
print("max_massiv-----> ",max_array)
task 10
import numpy as np
import random 
matrix=[]

for i in range(3):
    layer=[]
    for j in range(3):
        row=[]
        for k in range(3):
            row.append(random.randint(-10,10))
        layer.append(row)
    matrix.append(layer)
matrix=np.array(matrix)
matrix
