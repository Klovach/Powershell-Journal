<# Here's how to view and cycle through command history.
To see previous commands you can cycle through using the up and down arrow keys. 
To see all of your previous commands, use the Get-History command.

ALIASES USED:
Get-History: History 
#>

# Get command history : history
Get-History 

# Clear the output on your screen : clear
Clear-Host 

<# Note: You can also search through previously used commands using the history shortcut, Ctrl-R.
Here, you can begin searching for command you want to look for and it will display the closest matches. 
It should be emphasized that older versions of Windows Powershell may not have this feature.

In this instance, you may use the pound symbol(#) followed by keywords of your desired, previously sent command.
Then, you may use tab completion to cycle through the relevant items in your command history. #>