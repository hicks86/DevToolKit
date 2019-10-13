Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

choco feature enable -n allowGlobalConfirmation

#Essential applications
choco install visualstudio2017professional
choco install visualstudio2017-workload-node
choco install visualstudio2017-workload-netcoretools
choco install visualstudio2017-workload-manageddesktop
choco install visualstudio2017-workload-netweb
choco install visualstudio2017-workload-universal
choco install dotnet4.5.2
choco install dotnet4.7.1
choco install sql-server-management-studio
choco install sql-server-express
choco install git 
choco install sourcetree
choco install googlechrome 

#Specific applications
choco install appium-desktop

#Useful applications
choco install 7zip  
choco install notepadplusplus
choco install adobereader
choco install wireshark 
choco install linqpad
choco install vscode

choco install evernote
choco install evernote-chrome

choco install poshgit
choco install teamviewer
choco install rdcman
choco install docker 
choco install docker-for-windows
