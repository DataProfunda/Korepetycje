import os
from datetime import datetime

#print(os.getcwd()) #Ścieżka do pliku Get Current Working Directory

path_to_folder = 'C:/Users/koste/Documents/R'

os.chdir(path_to_folder) # Zmiana cwd

#print(os.listdir()) 

#os.mkdir('test_folder') # Tworzy folder
#os.mkdir('test_folder/podfolder') 


#os.makedirs('test_folder/podfolder') # Tworzy całe drzewo folderów


#os.rmdir('test_folder/podfolder') # Usuwa konkretny folder
#os.removedirs('test_folder/podfolder') #Usuwa całe drzewo folderów

#os.rename('test_folder/podfolder','test_folder/podfolder2')

#print(os.stat('bazy_danych.sql')) #Wyswietla informacje o folderze/pliku

#print(os.stat('bazy_danych.sql').st_size) #Wyswietla wielkosc pliku

#print(os.stat('bazy_danych.sql').st_mtime) # Wywietla czas od ostatniej modyfikacji

#mod_time = os.stat('bazy_danych.sql').st_mtime
#print(datetime.fromtimestamp(mod_time))

'''
for dirpath, dirnames, filenames in os.walk(path_to_folder):
    
    print('Current Path: ',dirpath)
    print('Directories: ',dirnames)
    print('Files: ',filenames)
'''

#print(os.environ.get('DriverData'))
 
#file_path = os.path.join(os.getcwd(), 'test2.txt')  
#print(file_path)   

#with open(file_path,'w+') as f:
 #   f.write('Hello World')
    

#os.path.basename('/tmp/test.txt') 




    