Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

choco feature enable -n allowGlobalConfirmation

#Essential applications
choco install visualstudio2019professional
choco install visualstudio2019-workload-netweb
choco install visualstudio2019-workload-manageddesktop
choco install visualstudio2019-workload-netcrossplat
choco install visualstudio2019-workload-office
choco install visualstudio2019-workload-netcoretools
#choco install dotnet4.5.2 - ???
#choco install dotnet4.7.1 - ???
#choco install netfx-4.7.1-devpack - ???
choco install git 
choco install sourcetree
choco install googlechrome 
choco install brave

#Specific applications
choco install appium-desktop

#Useful applications
choco install 7zip  
choco install notepadplusplus
choco install adobereader
choco install wireshark 
choco install vscode

choco install evernote
choco install evernote-chrome

choco install poshgit
choco install teamviewer
#choco install docker 
#choco install docker-for-windows
