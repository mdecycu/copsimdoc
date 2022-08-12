# Python program to rename all file
# names in your directory
import os
 
os.chdir('regularAPI')
print(os.getcwd())
 
for count, f in enumerate(os.listdir()):
    f_name, f_ext = os.path.splitext(f)
    f_ext = ".html"
 
    new_name = f'{f_name}{f_ext}'
    os.rename(f, new_name)
print("done")