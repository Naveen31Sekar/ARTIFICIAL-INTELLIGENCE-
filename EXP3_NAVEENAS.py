r=2;c=3;A=[]
for i in range(r):
    row=[]
    for j in range(c):
        row.append(int(input()))
    A.append(row)
print("Matrix A: ")
for i in range(r):
    for j in range(c):
        print(A[i][j],end="")
    print()
print("Transpose of Matrix A: ")
for j in range(c):
    for i in range(r):
        print(A[i][j],end="")
    print()
