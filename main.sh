#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

clear
logo(){
cat <<'EOF'


  _    _           _      _____                _    
 | |  | |         | |    / ____|              | |   
 | |__| | __ _ ___| |__ | |     _ __ __ _  ___| | __
 |  __  |/ _` / __| '_ \| |    | '__/ _` |/ __| |/ /
 | |  | | (_| \__ \ | | | |____| | | (_| | (__|   < 
 |_|  |_|\__,_|___/_| |_|\_____|_|  \__,_|\___|_|\_\
                                                    
	}----{+}    Coded By S1rwolf    {+}----{                                                                                          

EOF
}

# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	chmod +x md5.py
	python3 md5.py
        pause
}
 
two(){
	chmod +x sha256.py
	python3 sha256.py
        pause
}


# function to display menus
show_menus() {
    echo "    "
	echo "{1}--MD5"
    echo "{2}--SHA256"
	echo "    "
	echo "{99} Exit"
    echo "    "
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 2] : " choice
	case $choice in
		1) one ;;
		2) two ;;
		99) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
	clear
 	logo
	show_menus
	read_options
done