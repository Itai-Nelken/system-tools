#!/bin/bash 

function error {
  echo -e "\e[91m$1\e[39m"
}

#variables
DIRECTORY="$HOME/Pi-Assistant"
APPS="$HOME/Pi-Assistant/apps"

echo "this script will help you install or remove simplescreenrecorder."
PS3='Please enter the number for install or remove (1 - 3): '
options=("install" "remove" "back to app installer")
select opt in "${options[@]}"
do
    case $opt in

        "install")

sudo apt update || error "Failed to update repos (not critical)."
sudo apt install -y simplescreenrecorder || error "Failed to install simplescreenrecorder!"

            break
            ;;
   
        "remove")  
   
sudo apt purge -y simplescreenrecorder || error "failed to remove simplescreenrecorder!"
   
            break
            ;;

        "back to app installer")
   
$APPS/appinstaller.sh

            break
            ;;

       *) echo "invalid option $REPLY";;
    esac
done     

sleep 2
clear
