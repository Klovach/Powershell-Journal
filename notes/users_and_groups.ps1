# Please be aware that some commands may require administrator privileges to run.

# Get all local users : Get-LocalUser
Get-LocalUser -Name "Administrator"

# Create new local user 
New-LocalUser -Name "NewUser" -FullName "John Doe" -Description "New user account"

# Modify local user properties
Set-LocalUser -Name "ExistingUser" -Description "Updated description"

# Remove local user
Remove-LocalUser -Name "UserToDelete"

# Get all local groups : Get-LocalGroup
Get-LocalGroup

# Get all local groups and their members : Get-LocalGroupMember
Get-LocalGroupMember -Group "Administrators"
