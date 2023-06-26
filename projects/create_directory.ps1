# Create the folder in the user's desktop. 
Set-Location Desktop
# Assign the directory name to a variable.
$directoryName = "Powershell Fun"

# If the directory doesn't exist, create it.
if (-not (Test-Path $directoryName)) {
    New-Item -ItemType Directory -Path $directoryName | Out-Null
    Write-Host "Directory '$directoryName' created."
}
# If the directory already exists, inform the user first.
else {
    Write-Host "Directory '$directoryName' already exists."
# In a future iteration, if time allows, there will be the option to delete the directory and create a new one. This will demonstrate understanding of the directory deletion process.
}
