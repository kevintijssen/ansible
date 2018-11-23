Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private 
Enable-PSRemoting -Force -ErrorAction Stop
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
