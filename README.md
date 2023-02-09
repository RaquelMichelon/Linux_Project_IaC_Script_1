# Linux Project Script_1 - Infrastructure as Code (IaC)
Creating Users via Script

## Steps

- 1 To go to the root directory of Linux file system: `cd /` and to list: `ls` or `ls -l` 

- 2 To remove a pre-existent directory: `rm -RF /adm/` (-RF to remove Recursively and Forcing)

- 3 To check what users we have on the system: `cat /etc/passwd` and remove a pre-existent user and its folder: `userdel -r userName`

- 4 To remove pre-existent group - first check them: `cat /etc/group` then remove: `groupdel GroupName`

- 5 To create a new directory to store the script: `mkdir scripts` and change to that directory: `cd /scripts`

- 6 To create the script file with .sh extension (here we are using nano text editor, but you can choose others like vi or vim): `nano create_users.sh` 

- 7 To give the permission to run the script: `chmod +x create_users.sh`

- 8 To run/execute the script: `./create_users.sh`

- 9 To check if the new users were created: `cat /etc/passwd`

> Note! Only root users have permission to run the script.
