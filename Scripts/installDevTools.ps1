Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

choco feature enable -n allowGlobalConfirmation

#Essential applications
choco install visualstudio2019professional
choco install visualstudio2019-workload-netweb
choco install visualstudio2019-workload-manageddesktop
choco install visualstudio2019-workload-netcrossplat
choco install visualstudio2019-workload-office
choco install visualstudio2019-workload-netcoretools
choco install git 
#choco install sourcetree
#choco install googlechrome 
#choco install brave
choco install office365business
choco install sqlitebrowser
choco install beyondcompare

#Specific applications
choco install appium-desktop

#Useful applications
choco install 7zip  
choco install notepadplusplus
choco install adobereader
choco install vscode
