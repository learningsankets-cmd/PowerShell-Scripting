Get-Content -Path C:\Users\Administrator\Desktop\servers.txt | ForEach-Object { 
if (Test-Connection -ComputerName $_ -Quiet -Count 1){
     
     $operating_system = Get-CimInstance -ComputerName $_ -ClassName 'Win32_OperatingSystem' | Select-Object -ExcludeProperty Caption

     "$_ - $operating_system"

    }
}
