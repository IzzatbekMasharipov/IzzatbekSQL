datafarm 1
task 1
df1 = pd.DataFrame(data1)
df1["o'rtacha_baho"]=df1[['Math','English','Science']].mean(axis=1)
df1
task 2
df1 = pd.DataFrame(data1)
df1["o'rtacha_baho"]=df1[['Math','English','Science']].mean(axis=1)
df1.sort_values("o'rtacha_baho",ascending=False).head(1)
task 3
df1['Jami']=df1[['Math','English','Science']].sum(axis=1)
df1
task 4
df1[['Math','English','Science']].mean().plot(kind='bar',color='skyblue',title="Fanlar bo'yicha o'rtacha baxolar")
datafarm 2
task 1
import pandas as pd

data2 = {
    'Date': pd.date_range(start='2023-01-01', periods=10),
    'Product_A': [120, 150, 130, 110, 140, 160, 135, 125, 145, 155],
    'Product_B': [90, 110, 100, 80, 95, 105, 98, 88, 102, 112],
    'Product_C': [75, 80, 85, 70, 88, 92, 78, 82, 87, 90]
}

df2 = pd.DataFrame(data2)
df2[['Product_A','Product_B','Product_C']].sum(axis=0)
task 2
df2 = pd.DataFrame(data2)
df2['SUM_']=df2[['Product_A','Product_B','Product_C']].sum(axis=1)
df2.sort_values('SUM_',ascending=False).head(1)
task 3

for product in ['Product_A','Product_B','Product_C']:
    list=[]
    for i in range(len(df2)):
        if i==0:
            list.append(None)
        else:
            avvalgi=df2.loc[i-1,product]
            hozirgi=df2.loc[i,product]
            uzgarish=(hozirgi-avvalgi)/avvalgi*100
            list.append(round(uzgarish,2))
    df2[f"{product}_uzgarish_kunlik"]=list


df2
task 4
df2[['Product_A_uzgarish_kunlik','Product_B_uzgarish_kunlik','Product_C_uzgarish_kunlik']].plot(figsize=(20,6))
plt.title("Mahsulotlar bo'yicha kunlik o'zgarish tendensiyasi")
plt.xlabel('sana')
plt.ylabel('savdo ozgarishi')

datafarm 3
task 1
import pandas as pd

data3 = {
    'Employee_ID': [101, 102, 103, 104, 105, 106, 107, 108, 109, 110],
    'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Emma', 'Frank', 'Grace', 'Hank', 'Ivy', 'Jack'],
    'Department': ['HR', 'IT', 'Marketing', 'IT', 'Finance', 'HR', 'Marketing', 'IT', 'Finance', 'Marketing'],
    'Salary': [60000, 75000, 65000, 80000, 70000, 72000, 68000, 78000, 69000, 76000],
    'Experience (Years)': [3, 5, 2, 8, 4, 6, 3, 7, 2, 5]
}
df3 = pd.DataFrame(data3)
df3=df3.groupby('Department')
df3.agg({"Salary":'mean'})
task 2
df3 = pd.DataFrame(data3)
df3.sort_values('Experience (Years)',ascending=False).head(1)
task 3
df3 = pd.DataFrame(data3)
df3=df3.sort_values('Salary').reset_index(drop=True)
df3
list=[]
for i in range(len(df3)):
    if i==0:
        list.append(None)
    else:
        avvalgi=df3.loc[i-1,'Salary']
        hozirgi=df3.loc[i,'Salary']
        farq=(hozirgi-avvalgi)/avvalgi*100
        list.append(farq)

df3['Salary Increase']=list
df3
task 4

df3['Department'].value_counts().plot(kind='bar',title='Xodimlar',xlabel='Department',ylabel='Soni')
DataFrame 4
task 1
import pandas as pd

data4 = {
    'Order_ID': [101, 102, 103, 104, 105, 106, 107, 108, 109, 110],
    'Customer_ID': [201, 202, 203, 204, 205, 206, 207, 208, 209, 210],
    'Product': ['A', 'B', 'A', 'C', 'B', 'C', 'A', 'C', 'B', 'A'],
    'Quantity': [2, 3, 1, 4, 2, 3, 2, 5, 1, 3],
    'Total_Price': [120, 180, 60, 240, 160, 270, 140, 300, 90, 180]
}

df4 = pd.DataFrame(data4)
df4['umumiy']=df4['Quantity']*df4['Total_Price']
df4['umumiy'].sum()
task 2
df4 = pd.DataFrame(data4)
df4.nlargest(1,'Quantity')
task 3
df4 = pd.DataFrame(data4)
df4=df4.groupby('Product')
df4.agg({'Quantity':'mean'}).astype(int)
task 4
df4 = pd.DataFrame(data4)
df4['umumiy']=df4['Quantity']*df4['Total_Price']


df4.groupby('Product')['umumiy'].sum().plot(kind='pie',title="mahsulot sotuv ko'rsatkichi")




