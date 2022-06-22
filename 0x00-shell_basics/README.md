# 0x00. Shell, basics
**0. Where am I?** \
Write a script that prints the absolute path name of the current working directory.
```
#!/bin/bash
pwd
```

**1. What’s in there?** \
Display the contents list of your current directory.
```
#!/bin/bash
ls
```

**2. There is no place like home**
Write a script that changes the working directory to the user’s home directory.
You are not allowed to use any shell variables
```
#!/bin/bash
cd /root
```

**3. The long format**
Display current directory contents in a long format
#!/bin/bash
ls -l

**4. Hidden files**
Display current directory contents, including hidden files (starting with .). Use the long format.
#!/bin/bash
ls -la

**5. I love numbers**
Display current directory contents.
Long format
with user and group IDs displayed numerically
And hidden files (starting with .)
#!/bin/bash
ls -al


**6. Welcome**
Create a script that creates a directory named my_first_directory in the /tmp/ directory.
#!/bin/bash 
mkdir /tmp/my_first_directory

**7. Betty in my first directory**
Move the file betty from /tmp/ to /tmp/my_first_directory.
#!/bin/bash 
mv /tmp/betty /tmp/my_first_directory/betty

**8. Bye bye Betty**
Delete the file betty.
The file betty is in /tmp/my_first_directory
#!/bin/bash 
rm /tmp/my_first_directory/betty

**9. Bye bye My first directory**
Delete the directory my_first_directory that is in the /tmp directory.
#!/bin/bash 
rmdir /tmp/my_first_directory


**10. Back to the future**
mandatory
Write a script that changes the working directory to the previous one.
#!/bin/bash 
cd -

**11. Lists**
Write a script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.
#!/bin/bash
ls -al . .. /boot

**12. File type**
Write a script that prints the type of the file named iamafile. The file iamafile will be in the /tmp directory when we will run your script.
#!/bin/bash 
file /tmp/iamafile

**13. We are symbols, and inhabit symbols**
Create a symbolic link to /bin/ls, named __ls__. The symbolic link should be created in the current working directory.
#!/bin/bash
ln -s /bin/ls __ls__


**14. Copy HTML files**
Create a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.
You can consider that all HTML files have the extension .html
#!/bin/bash 
cp -nu *.html ..


