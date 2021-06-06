BYellow='\033[1;33m'      # Yellow
BRed='\033[1;31m'         # Red
# Reset
noc='\033[0m'       # Text Reset
BCyan='\033[1;36m'        # Cyan
clear
if [[ "$#" -eq "1" ]]
  then 
  	case "$*" in
		help) clear
		      bash help_b.sh ;;			 
		file) bash file_b.sh 1 ;;
		text) bash text_b.sh 1 ;;
		status) bash sys_b.sh 1 ;;
	esac
  else
  	echo "          UNIX HELP MAIN MENU"
    printf "\n"
  	printf "${BYellow}1 -- File and Directory Management Commands\n"
  	printf "2 -- Text Processing Commands\n"
  	printf "3 -- System Status Commands${noc}\n"
  	printf "${BRed}4 -- EXIT ${noc}\n"
  	echo -e "\n"
  	echo -e "${BCyan}           Enter your choice:${noc}"
  	read a 
  	case "$a" in
   		1) bash load.sh
		   bash file_b.sh 0 ;;
   		2) bash load.sh
		   bash text_b.sh 0 ;;
   		3) bash load.sh
		   bash sys_b.sh 0 ;;
   		4) bash load.sh
		    clear
		    printf "${BRed}\n\n EXITED..${noc}\n"
		   exit ;;
  	esac
fi

