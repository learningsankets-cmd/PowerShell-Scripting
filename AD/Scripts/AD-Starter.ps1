# Ensuree that module is available
Get-Module -Name ActiveDirectory -ListAvailable

# Check all commands inside the module
Get-Command -Module ActiveDirectory

#Read a user account
Get-ADUser -Filter "Name -eq 'Administrator'"

# Read a group
Get-ADGroup -Filter "Name -eq 'Domain Users'"


# Get a computer
Get-ADComputer -Filter *


# Get all properties of a user
Get-ADUser -Identity Administrator -Properties *

# Get few properties of a user
Get-ADUser -Filter "samaccountname -eq 'Administrator'" | Select-Object *