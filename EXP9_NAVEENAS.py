p = '''!()-[]{};:'"\,<>./?@#$%^&*_~'''
string = input() 
string = input("Enter a string: ")
opstring= ""
for i in my_string:
   if i not in punctuations:
       opstring = opstring+ i
print(opstring)
