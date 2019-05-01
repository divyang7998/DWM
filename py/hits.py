import math

# m = [
#     [0, 0, 1, 0, 0, 0, 0],
#     [0, 1, 1, 0, 0, 0, 0],
#     [1, 0, 1, 1, 0, 0, 0],
#     [0, 0, 0, 1, 1, 0, 0],
#     [0, 0, 0, 0, 0, 0, 1],
#     [0, 0, 0, 0, 0, 1, 1],
#     [0, 0, 0, 2, 1, 0, 1]
# ]
m = [
    [0, 1, 1, 1],
    [0, 0, 1, 1],
    [1, 0, 0, 1],
    [0, 0, 0, 1]
]
n = len(m)
u = []
v = []
k = 3
for i in range(0, n):
    u.append(1)
mt = []
for i in range(0, n):
    mt.append([])
    for j in range(0, n):
        mt[i].append(m[j][i])

def matrixMul(a, b):
    result = []
    for i in range(0, n):
        sum = 0
        for j in range(0, n):
            sum += b[j] * a[i][j]
        result.append(sum)
    return result

def calScore(l):
    result = []
    s = 0
    for i in l:
        s += i**2
    for i in l:
        result.append(i/math.sqrt(s))
    return result

v = matrixMul(mt, u)
u = matrixMul(m, v)
u1 = calScore(u)
v1 = calScore(v)
u2 = calScore(u1)
v2 = calScore(v1)

print(u2)
print(v2)
