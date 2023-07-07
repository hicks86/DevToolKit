Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

choco feature enable -n allowGlobalConfirmation

#Essential applications
choco install visualstudio2022professional
choco install visualstudio2022-workload-netweb
choco install visualstudio2022-workload-manageddesktop
choco install visualstudio2022-workload-netcrossplat
choco install visualstudio2022-workload-office
choco install visualstudio2022-workload-netcoretools
choco install git 
choco install git-fork
choco install firefox
choco install office365business

#Useful applications
choco install notepadplusplus
choco install vscode
