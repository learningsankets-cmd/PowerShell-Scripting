Get-ADGroup -Filter *

Get-ADGroupMember -Identity Team-CreateUsers


$groups = Get-ADGroup -Filter * -Properties members | Where-Object {$_.Members.Count -gt 0} | Select-Object Name, Members
$groups

$groups1 = Get-ADGroup -Filter *
foreach ($group in $groups1){
    
    $group.Name
    Get-ADGroupMember -Identity $group | Where-Object {$_.objectclass -eq 'user'} | Select-Object -Property Name

}

foreach ($group in $groups1){
    $output = @{}
    $output.GroupName = $group.Name
    $output.Members = Get-ADGroupMember -Identity $group | Where-Object {$_.Count -gt 1 } | Where-Object {$_.objectclass -eq 'user'} | Select-Object -ExpandProperty Name

   
    [pscustomobject]$output | Format-Table
    
}

$groups1.foreach({
    $output = @{}
    $output.GroupName = $_.Name
    $groupMembers = Get-ADGroupMember -Identity $group | Where-Object {$_.Count -gt 1 } | Where-Object {$_.objectclass -eq 'user'} | Select-Object -ExpandProperty Name

    if ( $groupMembers) {
    $output.Members  = $groupMembers
    [pscustomobject]$output | Format-Table
    }
}) | Format-Table


Get-ADGroupMember -Identity 'Team-createUsers' | select name,objectclass

Get-ADGroupMember -Identity 'Team-createUsers' | where {$_.objectclass -eq 'user'}