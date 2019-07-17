Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression


param([bool] $installAdditionalTools = true)

choco feature enable -n allowGlobalConfirmation

choco install skype 
choco install visualstudio2017professional
choco install sql-server-management-studio
choco install sql-server-express
choco install git 
choco install sourcetree
choco install googlechrome 


if ($installAdditionalTools) {
    choco install 7zip  
    choco install notepadplusplus
    choco install adobereader

    choco install fiddler4 
    choco install wireshark 
    choco install linqpad 


    choco install docker 
    choco install docker-for-windows

    choco install vscode
    choco install evernote
    choco install evernote-chrome
    choco install teamviewer
    choco install poshgit
}

#choco install firefox