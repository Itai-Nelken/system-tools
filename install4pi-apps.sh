#!/bin/bash

cp ~/system-tools/system-tools.desktop ~/Desktop || echo "$(tput setaf 1)error occured! $(tput sgr 0)"
cd ~/system-tools || echo "$(tput setaf 1)error occured! $(tput sgr 0)"
sudo chmod +x system-tools.sh || echo "$(tput setaf 1)error occured! $(tput sgr 0)"
sudo chmod +x install2.sh || echo "$(tput setaf 1)error occured! $(tput sgr 0)"
./install2.sh || echo "$(tput setaf 1)error occured! $(tput sgr 0)"
echo "$(tput setaf 2)Installation succesful! $(tput sgr 0)"
echo "$(tput setaf 3)to run system-tools, run the desktop shortcut $(tput sgr 0)"
