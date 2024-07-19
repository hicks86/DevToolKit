#Chocolatey
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
choco install git-fork #currently failing
choco install sqlitebrowser
choco install firefox
choco install office365business
choco install wixtoolset #Install the VS Extension aswell

#Frameworks
choco install dotnetcore-2.1-runtime
choco install dotnetcore-3.1-runtime
choco install netfx-4.7.2-devpack


#Useful applications
choco install notepadplusplus
choco install vscode
choco install eazfuscator.net
choco install slack
choco install notion
choco install revo-uninstaller
choco install obsidian
choco install 1password
choco install beyondcompare


#Addin Express Download
#$Folder = 'C:\Temp'
#"Test to see if folder [$Folder]  exists"
#if (Test-Path -Path $Folder) {
#    "Path exists!"
#} else {
#    "Path doesn't exist."
#    mkdir $Folder
#}
#Invoke-WebRequest -Uri "https://www.add-in-express.com/bitrix/rd.php?event1=download&event2=full&event3=&goto=/files/adx10netsetup/adxnet-v1001-b4703-vs-std.zip" -OutFile "C:\Temp\dxnet-v1001-b4703-vs-std.zip"



