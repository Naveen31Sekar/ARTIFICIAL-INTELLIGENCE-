#nested list
list1=list(input("Enter List: "))
A=list(input("Enter list to be nested: "))
list1.append(list(A))
print("Nested List:",list1)
#length
print("Length of List: ",len(list1))
#concatenation
con=list(input("Enter list to be Concatenated:  "))
list1=list1+con
#membership
m=input("Enter Membership Element to be checked: ")
print(m in list1)
#iteration
print("Iteration of list elements: ")
for i in list1:
    print(i)
#indexing
print("\nIndexing of list elements: ")
n=1
for i in list1:
    n+=1
    print(n,':',i)
#slicing
a,b=[int(i) for i in input("Enter indices of list to be sliced").split()]
print("Sliced Index: ",list1[a:b+1])
