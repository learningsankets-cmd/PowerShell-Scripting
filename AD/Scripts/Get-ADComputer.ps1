Get-ADComputer -Filter *

Get-ADComputer -Filter * | Select-Object Name, DistinguishedName

Get-ADComputer -Filter * -Properties * | Select-Object -First 1

#for more
Get-Help -Name Get-ADComputer -Detailed