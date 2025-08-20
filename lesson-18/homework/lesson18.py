homework 2
task 1
df = pd.read_csv('stackoverflow_qa.csv')
df[df['creationdate']<'2014-01-01']

task 2
df = pd.read_csv('stackoverflow_qa.csv')
df[df['score']>50]
task 3
df = pd.read_csv('stackoverflow_qa.csv')
df[df['score'].between(50,100)]
task 4
df = pd.read_csv('stackoverflow_qa.csv')
df[df['ans_name']=='Scott Boston']
task 5
df = pd.read_csv('stackoverflow_qa.csv')
df[df['id'].isin([332289,2051744,2225995,5486226,5515021])]
task 6
df = pd.read_csv('stackoverflow_qa.csv')
creation=df['creationdate'].between("2014-03-01","2014-10-01")
ans_name=df['ans_name']=='unutbu'
ckore_5=df['score']<5
df[creation&ans_name&ckore_5]
task7
df = pd.read_csv('stackoverflow_qa.csv')
df[(df['score'].between(5,10))|(df['viewcount']>10000)]
task 8
df = pd.read_csv('stackoverflow_qa.csv')
df[df['ans_name']!='Scott Boston']
homework 3
task 1
titanic_df = pd.read_csv('titanic.csv')
new_titanic=titanic_df[(titanic_df['Age'].between(20,30))&(titanic_df['Pclass']==1)]
new_titanic

task 2
titanic_df = pd.read_csv('titanic.csv')

fire_100=titanic_df[titanic_df['Fare']>100]
task 3
titanic_df = pd.read_csv('titanic.csv')

ew=titanic_df[(titanic_df['SibSp']==0)&(titanic_df['Parch']==0)&(titanic_df['Survived']==1)]
task 4
dc=titanic_df[(titanic_df['Embarked']=='C')&(titanic_df['Fare']>50)]
task 5
dq=titanic_df[(titanic_df['SibSp']==1)&(titanic_df['Parch']==1)]
task 6
df=titanic_df[(titanic_df['Age']<=15)&(titanic_df['Survived']!=1)]
task 7
dw=titanic_df[(titanic_df['Cabin'].notnull())&(titanic_df['Fare']>200)]
task 8
dr=titanic_df[titanic_df['PassengerId']%2!=0]
task 9
unique_tickets_df=titanic_df[titanic_df['Ticket'].duplicated(keep=False)==False]
task 10
new_datafarm=titanic_df[(titanic_df['Pclass']==1)&(titanic_df['Name'].str.contains('Miss',case=False))&(titanic_df['Sex']=='female')]


