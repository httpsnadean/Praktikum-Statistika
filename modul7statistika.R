#latihan1
import pandas as pd
from google.colab import files
uploaded = files.upload()
data_Nadin = pd.read_csv('titanic (1).csv')
print(data_Nadin)
data1 = data_Nadin.loc[:, ['Age', 'Pclass', 'Survived', ]]
print(data1)
data2 = data_Nadin[['Age', 'Pclass', 'Survived']]
data2.plot(title='Persebaran Data', x='Age', y='Pclass', kind='scatter',
           c='Survived', colormap='Paired')
data3 = data_Nadin[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
penumpang = data3.groupby('Pclass')['Name'].nunique()
print('Jumlah Penumpang:\n', penumpang)
data4 = data_Nadin[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
notsurvivedpassanger=data4['Pclass'].loc[data_Nadin['Survived']==0]
print('Penumpang yang tidak survived:\n', notsurvivedpassanger.value_counts())
survivedpassanger=data4['Pclass'].loc[data_Nadin['Survived']==1]
print('\nPenumpang yang survived:\n', survivedpassanger.value_counts())

#latihan2
import pandas as pd
from google.colab import files
uploaded = files.upload()
data_Nadin = pd.read_csv('titanic.csv')
print(data_Nadin)
data1 = data_Nadin[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
sex = data1.groupby('Sex')['Name'].nunique()
print('Jumlah sex: \n', sex)
data2 = data_Nadin[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
notsurvivedpassanger = data2['Sex'].loc[data_Nadin['Survived'] == 0]
print('Penumpang yang tidak survived:\n', notsurvivedpassanger.value_counts())
survivedpassanger = data2['Sex'].loc[data_Nadin['Survived'] == 1]
print('\nPenumpang yang survived:\n', survivedpassanger.value_counts())
