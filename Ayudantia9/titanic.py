import pandas as pd

df = pd.read_csv("titanic.csv",sep=",")

#print(df.head())

# porcentaje de supervivencia de menores
print(df[df['Age'] < 18]['Survived'].value_counts(normalize=True) * 100,"\n")

# embarcados por puerto
print(df.groupby(['Embarked'])['Embarked'].count(),"\n")

# edad promedio por cada clase
print(df[df['Age'] > 18].groupby(['Pclass'])['Age'].mean(),"\n")

# mayor edad de cada sexo
print(df.groupby(["Sex"])["Age"].max(),"\n")
