x = [55, 60, 65, 70, 80]
y = [52, 54, 56, 58, 62]

sx = sum(x)
sy = sum(y)
sxs = 0
sys = 0
sxy = 0
n = len(x)
for i in range(0, n):
    sxs += x[i]**2
    sys += y[i]**2
    sxy += x[i] * y[i]

a = (n*sxy - sx*sy) / (n*sxs - (sx**2))
b = (sy*sxs - sx*sxy) / (n*sxs - (sx**2))
print('y = ' + str(a) + 'x + ' + str(b))
ix = int(input('Enter x : '))
py = a*ix + b
print('Predicted y is ' + str(py))
