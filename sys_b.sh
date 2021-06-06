# Reset
noc='\033[0m'       # Text Reset
#colors
BPurple='\033[1;35m'      # Purple
BBlue='\033[1;34m'        # Blue
IRed='\033[0;91m'         # Redclear
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BCyan='\033[1;36m'        # Cyan
BYellow='\033[1;33m'      # Yellow
p=$1
if [[ $p -eq 1 ]]
then
	while true
	do
	  clear
	  printf "\t\t ${BYellow}SYSTEM STATUS COMMANDS${noc}"
	  echo -e "\n"
	  echo "1 -- Display the current date and time"
	  echo "2 -- Current disk usage"
	  echo "3 -- List current local and environmental"
	  echo "4 -- Display process status information"
	  printf "${BRed}5 -- Exit Program${noc}"
	  printf "\n\t\t ${BCyan}Enter your choice:${noc}"
	  read a
	  case "$a" in
	  	1) date +%F 
		   date +%r 
           ;;
	  	2) df -H
         ;;
	  	3) compgen -v
          ;;
	  	4) ps 
           ;;
	  	5)
		  bash load.sh
		   clear
		   printf "${BRed}\n\n EXITED..${noc}\n" 
		   exit ;;
		*)  printf "${IRed}\n        Invalid choice - Try Again\n\n${noc}"
            ;;
    
	 esac
	  printf "\n\n${BPurple}\t"
  	    read -p "Press enter to continue"
        printf "\n\n${noc}"
  	  bash load.sh
	done
fi

if [[ $p -eq 0 ]]
then
	while true
	do
	  clear
	  printf "\t\t ${BYellow}SYSTEM STATUS COMMANDS${noc}"
	  echo -e "\n"
	  echo "1 -- Display the current date and time"
	  echo "2 -- Current disk usage"
	  echo "3 -- List current local and environmental"
	  echo "4 -- Display process status information"
	  printf "${BRed}5 -- Quit -- Return to Main Menu ${noc}"
	  echo -e "\n"
	  printf "\t\t${BCyan}  Enter your choice:${noc}"
	  read a
	  case "$a" in
	  	1) date +%F 
		   date +%r 
          ;;
	  	2) df -H
           ;;
	  	3) compgen -v
          ;;
	  	4) ps 
          ;;
	  	5) flag=0
		   bash load.sh
		   break
		   ;;
		*)  printf "${IRed}\n        Invalid choice - Try Again\n\n${noc}"
            ;;
 	  esac
  	    printf "\n\n${BPurple}\t"
  	    read -p "Press enter to continue"
        printf "\n\n${noc}"
		bash load.sh
	done
fi

if [ $flag -eq 0 ]
then
bash myhelp_b.sh
fi
