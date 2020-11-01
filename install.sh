#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

#copy desktop shortcut to desktop and main menu
cp ~/Pi-Assistant/system-tools.desktop ~/Desktop || error "failed to create desktop shortcut!"
sudo cp ~/Pi-Assistant/system-tools.desktop /usr/share/applications || error "failed to create menu shortcut!"

#mark as executable some neded scripts
cd ~/Pi-6 || error "Failed to change to /home/pi/Pi-Assistant"
sudo chmod +x system-tools-v1.1.1.sh || error "failed to mark system-tools-v1.1.1.sh as executable!"

sudo chmod +x other.sh || error "failed to mark other.sh as executable!"
sudo chmod +x uninstall.sh || error "failed to mark uninstall.sh as executable!"
sudo chmod +x updater.sh || error "failed to mark updater.sh as executable!"



#mark as executable and run 2nd install script
sudo chmod +x install2.sh || error "failed to mark install2.sh as executable!"
./install2.sh || error "failed to run install2.sh!"

#print in green 'installation succesful' and in orange how to run system tools
echo "$(tput setaf 2)Installation succesful! $(tput sgr 0)"
echo "$(tput setaf 3)to run Pi-Assistant, run the desktop shortcut or main menu>other>Pi-Assistant  $(tput sgr 0)"

#print 'exiting in 5 seconds', wait 5 seconds and exit
echo exiting in 5 seconds...
sleep 5
exit
