punctuations = '''!()-[]{};:'"\,<>./?@#$%^&*_~'''

my_string = input() 

my_string = input("Enter a string: ")
no_punct = ""
for char in my_string:
   if char not in punctuations:
       no_punct = no_punct + char
print(no_punct)
