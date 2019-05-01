n = 4
m = [
    [0, 1, 1, 0],
    [0, 0, 0, 1],
    [1, 1, 0, 1],
    [0, 0, 1, 0]
]
itr = 3
ranks = []
outgoing = []
for i in range(0, n):
    links = 0
    for j in range(0, n):
        if m[i][j] == 1:
            links += 1
    outgoing.append(links)
for i in range(0, itr):
    ranks.append([])
    if i == 0:
        for j in range(0, n):
            ranks[i].append(1/n)
    else:
        for j in range(0, n):
            rank = 0
            for k in range(0, n):
                if j != k and m[k][j] == 1:
                    rank += ranks[i-1][k] / outgoing[k]
            ranks[i].append(rank)
r = sorted(ranks[2], reverse=True)
for i in range(0, n):
    print('Page {} rank is {}'.format(ranks[2].index(r[i]), i+1))
