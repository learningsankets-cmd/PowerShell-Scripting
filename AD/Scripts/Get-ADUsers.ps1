Get-ADUser -Filter *

Get-ADUser -Filter * -Properties * | Select-Object -First 1

$userscsv= Import-Csv -Path ".\users.csv.txt"
$userscsv

$allADUsers = Get-ADUser -Filter *
foreach ($user in $allADUsers){
    $user.Name
}

foreach ($user in $userscsv){

    $allADUsers | Where-Object {$_.name -eq $user.Name }

}