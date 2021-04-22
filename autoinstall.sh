#!/bin/bash

echo "=============================================="
echo "1.Create brew group and add user to brew group"
echo "=============================================="

echo "Insert Administrator Username: "
read adminname

echo "Insert $adminname Password"
su $adminname -c 'echo "Insert Administrator Password";sudo dseditgroup -o create brew; echo "Insert Standard Username: ";read standardname; sudo dseditgroup -o edit -a $standardname -t user brew'

echo "============================================"
echo "Brew group and add user created"
echo "============================================"

echo "=============================================="
echo "2.Install Homebrew"
echo "=============================================="

echo "Insert Administrator Username: "
read adminname

echo "Insert $adminname Password"
su $adminname -c '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";echo "================";echo"Check Brew Status";echo "================";brew doctor'

echo "============================================"
echo "Brew already installed and raring to brew"
echo "============================================"

echo "========================================================"
echo "3.Add Standard User to Sudoers and setup brew privileges"
echo "========================================================"

echo "Insert Administrator Username: "
read adminname

echo "Insert $adminname Password"
su $adminname -c 'echo "===================";echo "Add Standard User to sudoers";echo "===================";echo "Insert Standard Username: ";read standardname;echo "$standardname            ALL = (ALL) ALL" | sudo tee -ai /etc/sudoers'

echo "==========================="
echo "Setup Brew Group Previleges"
echo "==========================="
echo "Insert $(whoami) password: "
sudo chgrp -R brew $(brew --prefix)/*
sudo chmod -R g+w $(brew --prefix)/*
ls -al $(brew --prefix)

echo "============================================"
echo "Setup brew privileges done"
echo "============================================"
echo "Brew status on Standard User"
echo "============================================"
brew doctor
echo "============================================"
