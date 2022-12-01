# -*- coding: utf-8 -*-
"""prakstatis81

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1t1YSOAslPugqQX5WFqsGBJdY05qq6yI2
"""

import pandas as pd
#from pandas.tools import plotting
import matplotlib.pyplot as plt
import numpy as np
from sklearn.model_selection import train_test_split, cross_val_score, KFold, GridSearchCV
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier,export_graphviz
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.ensemble import GradientBoostingClassifier, RandomForestClassifier

from google.colab import files
uploaded = files.upload()

data_Nadin = pd.read_csv('/content/houseprice(1).csv', sep = ';')
data_Nadin.head(5)

col_list=['Price']
numhouse = data_Nadin[data_Nadin.columns[data_Nadin.columns.isin(col_list)]]
plt.figure(figsize=(10,5))
numhouse.boxplot(sym='r*', grid=False)
plt.show()

plt.figure(figsize=(15,5))
plt.subplot(121)
data_Nadin['Price'].plot.hist(bins=10, title='Price')
plt.show()

col_list=['Price', 'SqFt']
numhouse = data_Nadin[data_Nadin.columns[data_Nadin.columns.isin(col_list)]]
numhouse.plot.scatter(x='SqFt', y='Price')

col_list=['Price', 'Bedrooms']
numhouse = data_Nadin[data_Nadin.columns[data_Nadin.columns.isin(col_list)]]
plt.figure(figsize=(15,5))
numhouse.boxplot(by='Bedrooms')
plt.show()