import pandas as pd
import numpy as np
import math

dataset = pd.read_csv('decision-tree.csv')

def findUnique(l):
    unique = []
    for i in l:
        if i not in unique:
            unique.append(i)
    return unique

age = dataset['age'].tolist()
income = dataset['income'].tolist()
student = dataset['student'].tolist()
creditRating = dataset['credit_rating'].tolist()
y = dataset['Y'].tolist()
labels = findUnique(y)

totalYes = 0
totalNo = 0
for i in y:
    if i == 'Y':
        totalYes += 1
    else:
        totalNo += 1
total = totalYes + totalNo

classEntropy = -(totalYes/(total)) * math.log((totalYes/(total)), 2) - (totalNo/(total)) * math.log((totalNo/(total)), 2)

def entropy(attr):
    listV = findUnique(attr)
    ent = 0
    for i in listV:
        p = 0
        n = 0
        for j in range(0, total):
            if attr[j] == i and y[j] == 'Y':
                p += 1
            elif attr[j] == i and y[j] == 'N':
                n += 1
        if p == 0 or n == 0:
            e = 0
        else:
            e = -(p/(p+n)) * math.log((p/(p+n)), 2) - (n/(p+n)) * math.log((n/(p+n)), 2)
        ent += ((p + n)/(totalNo + totalYes)) * e
    return ent

gainAge = classEntropy - entropy(age)
gainIncome = classEntropy - entropy(income)
gainStudent = classEntropy - entropy(student)
gainCreditRating = classEntropy - entropy(creditRating)
gain = [gainAge, gainIncome, gainStudent, gainCreditRating]
maxGain = max(gain)
index = gain.index(maxGain)
if index == 0:
    print('Spliting Attribute is Age')
elif index == 1:
    print('Spliting Attribute is Income')
elif index == 2:
    print('Spliting Attribute is Student')
elif index == 3:
    print('Spliting Attribute is creditRating') 
