# Linux Project Script_1 - Infrastructure as Code (IaC)
Creating Users via Script

## Steps

- 1 To go to the root directory of Linux file system: `cd /` and to list: `ls` or `ls -l` 

- 2 To remove a pre-existent directory: `rm -RF /adm/` (-RF to remove Recursively and Forcing)

- 3 To check what users we have on the system: `cat /etc/passwd` and remove a pre-existent user and its folder: `userdel -r userName`

- 4 To remove pre-existent group - first check them: `cat /etc/group` then remove: `groupdel GroupName`

- 5 To create a new directory to store the script: `mkdir scripts` and change to that directory: `cd /scripts`

- 6 To create the script file with .sh extension (here we are using nano text editor, but you can choose others like vi or vim): `nano create_dir_group_users.sh`

> Note! `-m` = to create a user folder; `-s /bin/bash` = to the user has a script in bash; `-p $(openssl passwd Pass123)` = to create the user password with the value Pass123.

````
useradd carlos -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM
````

- 7 Save the .sh file, create a snapshot(backup) of the system in case any error happen and you have to go back

- 8 To give the permission to run the script: `chmod +x create_dir_group_users.sh`

- 9 To run/execute the script: `./create_dir_group_users.sh`

- 10 To check if the new users were created: `cat /etc/passwd`

> Note! Only root users have permission to run the script.
