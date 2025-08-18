#task 1
import pandas as pd
data = {'First Name': ['Alice', 'Bob', 'Charlie', 'David'], 'Age': [25, 30, 35, 40], 'City': ['New York', 'San Francisco', 'Los Angeles', 'Chicago']}
df = pd.DataFrame(data)
df=df.rename(columns={"First Name":"first_name", "Age":"age"})
df
####----------------
df.iloc[:3]
df.head(3)
df[:3]
###-----------------
avg=df['age'].sum()/df['age'].count()
print("o'rtacha yosh---->",avg)
avg=df["age"].mean()
print("o'rtacha yosh---->",avg)
###---------------------
df
df[["first_name","City"]]
###--------------------
import random as rd
df["Salary"]=0
for i in range(df['age'].size):
    df.iloc[i,3]=rd.randint(1000,2000)
df
df["Salary"]=0
index=df.columns.get_loc("Salary")
for i in range(len(df)):
    df.iloc[i,index]=rd.randint(1000,2000)
###--------------
len(df)
df.value_counts()
df.value_counts("Salary")
df['Age'].min()
df['Age'].max()
df["Salary"].min()
df["Salary"].max()
df['Salary'].count()
df.info()
df.nunique()
df['Age'].mean()
df['Salary'].mean()

#task 2
import pandas as pd

Month=["Jan","Feb","Mar","Apr"] 
Sales=[5000,6000,7500,8000]
Expenses=[3000,3500,4000,4500]
sales_and_expenses=pd.DataFrame({"Month":Month,"Sales":Sales,"Expenses":Expenses})
sales_and_expenses[["Sales","Expenses"]].max()
sales_and_expenses[["Sales","Expenses"]].min()
sales_and_expenses[["Sales","Expenses"]].mean()
#task 3
import pandas as pd
Category=["Rent","Utilities","Groceries","Entertainment"]
January=[1200,200,300,150]
February=[1300,220,320,160]
March=[1400,240,330,170]
April=[1500,250,350,180]
expenses=pd.DataFrame({"Category":Category,"January":January,"February":February,"March":March,"April":April})
expenses


expenses.set_index("Category").max(axis=1)

expenses.set_index("Category").min(axis=1)


data=expenses.set_index("Category")
data.mean(axis=1)


