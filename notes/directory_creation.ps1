
# Go to Desktop : cd Desktop 
Set-Location Desktop 

#Create a directory with spaces.
mkdir 'yellow folder', 'green folder'
#Copy all folders with a certain name to a new location : cp *.jpg Desktop | cp. *[file extension or name] [new location]
Copy-Item *.jpg Desktop
#Copy a folder and ALL of its files with a certain name to a new location : cp [folder name] [new location] -Recurse -Verbose 
Copy-Item 'yellow folder' 'green folder' -Recurse -Verbose 

# Moving and Renaming Documents : mv 
Move-Item 