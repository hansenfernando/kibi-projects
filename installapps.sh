#!/bin/bash 

###Function for backend eng.###
###
function backend(){
echo "Installing Cask"
casks=(
iterm2
visual-studio-code
postman
docker
lens
fork
slack
firefox
whatsapp
google-chrome
spotify
openvpn-connect
dbeaver-community
evernote
bloomrpc
zoom
virtualbox
virtualbox
)

echo "Installing cask apps.."
brew install --cask ${casks[@]}

echo "==========================="

echo "Installing Packages"
packages=(
git
yarn
node
golang
minikube
kubectl
)

echo "Installing packages.."
brew install ${packages[@]}

echo "==========================="
}

###Function for frontend eng.###
###
function frontend(){
echo "Installing Cask"
casks=(
iterm2
visual-studio-code
genymotion
postman
docker
zoom
slack
firefox
whatsapp
google-chrome
spotify
openvpn-connect
sourcetree
responsively
discord
dbeaver-community
)

echo "Installing cask apps.."
brew install --cask ${casks[@]}

echo "==========================="

echo "Installing Packages"
packages=(
git
node
nvm
nginx
)

echo "Installing packages.."
brew install ${packages[@]}

echo "==========================="
}

###Function for mobile eng.##
###

function mobile(){
echo "Installing Cask"
casks=(
android-studio
google-chrome
firefox
zoom
slack
fork
postman
dbeaver-community
openvpn-connect
charles
sourcetree
whatsapp
)

echo "Installing cask apps.."
brew install --cask ${casks[@]}

echo "==========================="

echo "Installing Packages"
packages=(
git
)

echo "Installing packages.."
brew install ${packages[@]}

echo "==========================="
}

###Function for QA eng.###
###

function qa(){
echo "Installing Cask"
casks=(
visual-studio-code
google-chrome
firefox
docker
postman
android-studio
genymotion
charles
whatsapp
evernote
spotify
dbeaver-community
openvpn-connect
zoom
)

echo "Installing cask apps.."
brew install --cask ${casks[@]}

echo "==========================="

echo "Installing Packages"
packages=(
nginx
node
yarn
golang
redis
kubectlx
)

echo "Installing packages.."
brew install ${packages[@]}

echo "Install Firebase CLI"
curl -sL https://firebase.tools | bash

echo "=============================="
}

menu (){
echo -ne "
Instalation Menu:
1) Backend team
2) Frontend team
3) Mobile team
4) QA team
5) Exit
Choose an option(1/2/3/4/5):" 
read option
case $option in
1) backend ; menu ;;
2) frontend ; menu ;;
3) mobile ; menu ;;
4) qa ; menu ;;
5) exit 0 ;;
*) echo -e "Wrong option"
esac
}

menu
