#Download and installs chocolatey if it does not already exist
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

#Removes the need to confirm [Y]es for every package
choco feature enable -n allowGlobalConfirmation

#ReactNative setup
choco install nodejs
choco install python2
choco install jdk8
