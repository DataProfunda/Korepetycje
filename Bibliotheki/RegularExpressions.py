import re

text_to_search = '''
abcdefghijklmnopqurtuvwxyz
ABCDEFGHIJKLMNOPQRSTUVWXYZ
1234567890
Ha HaHa
MetaCharacters (Need to be escaped):
. ^ $ * + ? { } [ ] \ | ( )
coreyms.com
321-555-4321
123.555.1234
123*555*1234
800-555-1234
900-555-1234
Mr. Schafer
Mr Smith
Ms Davis
Mrs. Robinson
Mr. T
'''


#Search for patterns in text

#print('\tHello World')

#print(r'\tHello World') #Raw string

pattern = re.compile(r'\d\d\d.\d\d\d.\d\d\d')

matches = pattern.finditer(text_to_search)

for match in matches:
    print(match)

print(text_to_search[1:4])

with open('C:/Users/koste/OneDrive/Pulpit/Korki/code_snippets/Python-Regular-Expressions/data.txt', 'r', encoding='utf-8') as f:
    contents = f.read()
    
    matches = pattern.finditter(text_to_search)
    
    for match in matches:
        print(match)    