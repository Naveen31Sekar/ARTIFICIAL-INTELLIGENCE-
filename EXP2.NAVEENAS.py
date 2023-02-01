r,c=[int(i) for i in input("Enter Row and Column: ").split()]
if(r==c):
    A=[];B=[];C=[]
    print("Enter Matrix A elements: ")
    for i in range(r*c):
        a=int(input())
        A.append(a)
    print('\n')
    print("Enter Matrix B Elements: ")
    for i in range(r*c):
        a=int(input())
        B.append(a)
    print('\n')
    print("Matrix A:")
    for i in range(r*c):
        print(A[i],"",end="")
        if(i==r-1 or i==(r*2)-1 or i==(r*3)-1):
            print('\n')
    print('\n')
    print("Matrix B:")
    for i in range(r*c):
        print(B[i],"",end="")
        if(i==r-1 or i==(r*2)-1):
            print('\n')
    for i in range(r*c):
        C.append(A[i]+B[i]);
    print('\n')
    print("Matrix A+B:")
    for i in range(r*c):
        print(C[i],"",end="")
        if(i==r-1 or i==(r*2)-1):
            print('\n')
else:
    print("Matrix Addition is not possible for different Row, Column values")
