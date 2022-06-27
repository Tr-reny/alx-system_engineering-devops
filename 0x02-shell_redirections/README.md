# 0x02. Shell, I/O Redirections and filters \
# DEVOPS # SHELL #BASH \


**TASK **

 **0.Hello World** \
 script that prints “Hello, World”, followed by a new line to the standard output.
 ```
#!/bin/bash 
echo "Hello, World"
```
**1. Confused smiley** \
script that displays a confused smiley "(Ôo)'.
 ```
#!/bin/bash
echo "\"(Ôo)'"
 ```
 
 **2. Let's display a file** \
 Display the content of the /etc/passwd file. 
```
#!/bin/bash 
cat /etc/passwd
```
 
**3. What about 2?** \
Display the content of /etc/passwd and /etc/hosts
```
#!/bin/bash
cat /etc/passwd /etc/hosts
```
**4. Last lines of a file** \
Display the last 10 lines of /etc/passwd
```
#!/bin/bash
cat /etc/passwd | tail
```
**5. I'd prefer the first ones actually** \
Display the first 10 lines of /etc/passw 
```
#!/bin/bash 
cat /etc/passwd | head 
```

**6. Line #2** \
Write a script that displays the third line of the file iacta.
The file iacta will be in the working directory
You’re not allowed to use sed
```
#!/bin/bash
head -n 3 iacta | tail -n 1 
```
**7. It is a good file that cuts iron without making a noise** \
Write a shell script that creates a file named exactly \*\\'"Best School"\'\\*$\?\*\*\*\*\*:) containing the text Best School ending by a new line.
```
#!/bin/bash
echo "Best School" | cat > '\*\\'\''"Best School"\'\''\\*$\?\*\*\*\*\*:)'
```
**8. Save current state of directory** \
Write a script that writes into the file ls_cwd_content the result of the command ls -la. If the file ls_cwd_content already exists, it should be overwritten. If the file ls_cwd_content does not exist, create it.
```
#!/bin/bash
ls -la > ls_cwd_content
```

**9. Duplicate last line** \
Write a script that duplicates the last line of the file iacta

The file iacta will be in the working directory
```
#!/bin/bash
tail -n 1 iacta | cat >> iacta
```

**10. No more javascript** \
Write a script that deletes all the regular files (not the directories) with a .js extension that are present in the current directory and all its subfolders.
```
#!/bin/bash
find . -name "*.js" -type f -delete
```





