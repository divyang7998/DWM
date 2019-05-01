import math

d = [2, 4, 10, 12, 3, 20, 33, 11, 25]

def dist(a, b):
    return math.sqrt((a - b)**2)
def centroid(l):
    return sum(l) / len(l)

k = 2
ks = []
c = []
newC = []
for i in range(0, k):
    c.append(d[i])
    ks.append([])
itr = 1
while True:
    for j in d:
        temp = []
        for i in range(0, k):
            temp.append(dist(j, c[i]))
        index = temp.index(min(temp))
        ks[index].append(j)
    for i in range(0, k):
        newC.append(centroid(ks[i]))
    print('-'*20 + ' I{} '.format(itr) + '-'*20)
    itr += 1
    for i in range(0, k):
        print('Centroid{} : {}'.format(i+1, c[i]))
        print('K{} : {}'.format(i+1, ks[i]))
    if c == newC:
        break
    c = newC
    newC = []
    for i in range(0, k):
        ks[i] = []
