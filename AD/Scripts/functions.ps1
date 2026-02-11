##$path = 'C:\Users\Administrator\Desktop\Scripts'

#ise $path\test.ps1


#powershell.exe -File "$path\test.ps1"


#& "$path\test.ps1"

#function in powershell verb-noun (for best pra)
function Do-Thing {
    Write-Output "Doing Someting"
}

Do-Thing

#function with input/param

function Do-Anything{
    param(
    [Parameter()]
    $Atrribute
    )

    Write-Output "Something but with $Atrribute!"
}

Do-Anything -Atrribute "This the attribute"




#functions demo

function Find-TextFile {
    param(
    [Parameter()]
    $Name
    )
    Get-ChildItem -Path 'C:\Users\Administrator\Desktop\Scripts' -Filter "*$Name*.txt"
}


function Set-TextFile {
    param(
        [Parameter()]
        $Path,
        [Parameter()]
        $Value
    )

    Set-Content -Path $Path -Value $Value
   }

   $textFile = Find-TextFile -Name "test"
   Set-TextFile -Path $textFile.FullName -Value 'This is the new content'
   Get-Content -Path $textFile.FullName