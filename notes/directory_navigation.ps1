<#
   This is how you write a comment in a .ps1 file. 
   Writing powershell scripts can help you automate repetitive tasks,
   such as organizing information or displaying information in a certain way.
    You can also use powershell to create a GUI for your scripts.
    This script will display the directories in the current directory.
    Given my intended field of study is software development, and eventually machine learning,
    this journal will be brief. As of writing this journal, the year is 2023. Enjoy. 
#>


<# A bit about Power Shell:
It's important to know that there are a couple of command line interfaces or CLIs available on Windows. 
The first one is called the command prompt, cmd.exe. The second one is PowerShell or powershell.exe. 

A bit about Directories:
All of the files on a computer are sorted as if in one "giant library". Using ls, or list, will display the files in the current directory.
It should be noted ls is an alian of "Get-Child Item", we use alias to make it easier to type commands. 

Helpful shortcuts:
- Tab completion allows a user the tab key to auto complete file names and directories.
- Up and down arrows allow a user to cycle through previous commands.

ALIASES USED:

Write-Output: echo
Get-Location: pwd
Get-ChildItem: ls
Set-Location: cd

#>


#Write output using echo, or write-output : echo
Write-Output "Hello, you can write me using echo [message that you want without the brackets]" 

# Display the current directory, where you are in the file system. : pwd
Get-Location 

# Display the contents of the current directory : ls
Get-ChildItem 

# Display the directories in the root of the C drive. The C drive is where the Windows operating system is installed : ls
Get-ChildItem C:\

# Find hidden files in a directory. Force will show hidden system files : ls -Force
Get-ChildItem -Force

# Changing directories. This can be an absolute or relative path. : cd [directory name or path]
Set-Location Directory

# Get to the level above your current directory : cd.. 
cd..






