# A personal project to make sorting various files for classes faster and easier. 
# This program will search ALL files in Desktop, Documents, and Downloads for files with a certain name, and move them to a new and more preferrable location.
# This program should have safeguards to ensure that the user does not accidentally delete files or attempt to create a file that already exists.
# This program takes the characteristic of the files the user wants to move, and the name of the directory they want to move it to. Then, it copies all of the files
# with that characteristic to the new directory. The user will have to manually delete the files from the old directory.

# THIS IS A WORK IN PROGRESS. DO NOT USE. 

# Get user input for the name of the file they want to move.
$fileName = Read-Host -Prompt 'What is the characteristic of the files you want to move?'

# Get user input for the name of the directory they want to move the file to. Please use an absolute path. 
$destinationDirectory = Read-Host -Prompt 'What is the path of the directory you want to move the file to? Use an absolute path.'

$destinationDirectory = "C:\NewLocation"

# Search for files with the specified name in the Desktop, Documents, and Downloads folders
$desktopFiles = Get-ChildItem -Path "$HOME\Desktop" -Filter $fileName -File -Recurse
$documentsFiles = Get-ChildItem -Path "$HOME\Documents" -Filter $fileName -File -Recurse
$downloadsFiles = Get-ChildItem -Path "$HOME\Downloads" -Filter $fileName -File -Recurse

# Create the destination directory if it doesn't exist
if (-not (Test-Path $destinationDirectory)) {
    New-Item -ItemType Directory -Path $destinationDirectory | Out-Null
    Write-Host "Destination directory created: $destinationDirectory"
}

# Move the files to the destination directory
$desktopFiles | Move-Item -Destination $destinationDirectory -Force
$documentsFiles | Move-Item -Destination $destinationDirectory -Force
$downloadsFiles | Move-Item -Destination $destinationDirectory -Force

# Provide a summary of the operation
$filesMoved = $desktopFiles.Count + $documentsFiles.Count + $downloadsFiles.Count
Write-Host "Moved $filesMoved files to $destinationDirectory."