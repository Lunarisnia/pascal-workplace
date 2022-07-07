mat1 = [
    [1, 2, 3],
    [4, 5, 6],
    [3, 2, 1]
]

mat2 = [
    [6, 5, 4],
    [3, 2, 1],
    [4, 5, 6]
]

mat3 = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
]

for i in range(len(mat1)):
    for j in range(len(mat1[i])):
        mat3[i][j] = mat1[i][j] + mat2[i][j]

print(mat3)