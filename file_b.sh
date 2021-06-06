noc='\033[0m'             # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
On_IPurple='\033[0;105m'  # Purple
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
IRed='\033[0;91m'         # Redclear
BPurple='\033[1;35m'      # Purple
BRed='\033[1;31m'         # Red

p=$1
if [[ $p -eq 1 ]]
then
	while true
	do
        clear
        printf "\n \t\t ${BYellow} FILE AND DIRECTORY MANAGEMENT COMMANDS\e ${noc}\n"
        printf "  1 -- Display the contents of a file\n"
        printf "  2 -- Remove a file\n"
        printf "  3 -- Copy a file\n"
        printf "  4 -- List a file\n"
        printf "  5 -- Size of a file\n" 
        printf "${Red}  6-- Exit the program ${noc}\n"
        printf " \t ${Cyan} Enter your choice: ${noc} "
        read a
        case "$a" in
            1) printf " Name of file to be displayed: \n"
             read b
             if [ ! -f $b  ]
             then
               printf "$b :" 
               printf  "${Red}NOT FOUND.${noc}\n"
             else
               cat $b
             fi
             ;;
          2) echo "Name of file to be deleted:"
		       read c
		       
             if [ ! -f $c  ]
             then
               printf "$c :\n" 
               printf  "${Red}NOT FOUND.\n${noc}"
             else
               rm $c 
               printf " ${Red}File Deleted.${noc}"
             fi
              
             ;;
              
		    3) echo "Name of the file to be copied:"
		       read n
             if [ ! -f $n  ]
               then
                  printf "$n :" 
                  printf  "${Red}NOT FOUND.\n${noc}"
             else 
             { 
                echo "Destination file where you want to copy:"
		          read m
                if [ ! -f $m  ]
                   then
                      printf "$m :" 
                      printf  "${Red}NOT FOUND.\n${noc}"
                 else 
                 cp $n $m
                  printf "\n copied successfully. \n" 
                 fi
             }
		       fi
            
		       ;;
		    4) echo "Enter the file name:"
		       read v
             if [ ! -f $v ]
             then
               printf "$v :\n" 
               printf  "${Red}NOT FOUND.${noc}\n"
             else 
               ls  -l $v
              fi
               
              ;;
		  5) echo "enter name of the file to get it's size:"
		     read q
		     
           if [ ! -f $q ]
             then
               printf "$q :\n" 
               printf  " ${Red}NOT FOUND.${noc}\n"
             else
               ls -lh $q | awk '{print $5"B"}' 
             fi
             
             ;;
       6) bash load.sh
		   clear
		    printf "${BRed}\n\n EXITED..${noc}\n"
		   exit 1 
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
if [[ $p -eq 0 ]]
then
	while true
	do
	  clear
	  printf "\t ${BYellow} FILE AND DIRECTORY MANAGEMENT COMMANDS ${noc}"
	  echo -e "\n"
	  echo "1 -- Display the contents of a file"
	  echo "2 -- Remove a file"
	  echo "3 -- Copy a file"
	  echo "4 -- List a file"
	  echo "5 -- Size of a file"
	  echo -ne "${Red}6 -- Quit -- Return to main Menu ${noc}"
	  echo -e "\n"
	  printf "\t\t${Cyan} Enter your choice: ${noc}"
	  read a
	  case "$a" in
		    1) printf " Name of file to be displayed: \n"
             read b
             if [ ! -f $b  ]
             then
               printf "$b :" 
               printf  "${Red}NOT FOUND.${noc}\n"
             else
               cat $b
             fi
             
             ;;
             
          2) echo "Name of file to be deleted:"
		       read c
		       
             if [ ! -f $c  ]
             then
               printf "$c :" 
               printf  "${Red}NOT FOUND.${noc}\n"
             else
               rm $c 
               printf " ${Red}File Deleted.${noc}"
             fi
            
             ;;

		    3) echo "Name of the file to be copied:"
		       read n
             if [ ! -f $n  ]
               then
                  printf "$n :" 
                  printf  " ${Red}NOT FOUND.${noc}\n"
             else 
             { 
                echo "Destination file where you want to copy:"
		          read m
                if [ ! -f $m ]
                   then
                      printf "$m :" 
                      printf  "${Red}NOT FOUND.${noc}\n"
                 else 
                 cp $n $m 
                 printf "\n copied successfully. \n"
                 fi
                 
             }
		       fi
		      
          ;;
		    4) echo "Enter the file name:"
		       read v
             if [ ! -f $v ]
             then
               printf "$v :\n" 
               printf  "${Red}NOT FOUND.${noc}\n"
             else 
               ls -l $v
              fi
               
              ;;
		  5) echo "enter name of the file to get it's size:"
		     read q
		     
           if [ ! -f $q ]
             then
               printf "$q :" 
               printf  "${Red}NOT FOUND.${noc}\n"
             else
               ls -l $q | awk '{print $5"B"}' 
             fi
             
             ;;
		  6) mark=0 
           bash load.sh
		     break;;
      *)  printf "${IRed}\n        Invalid choice - Try Again\n\n${noc}"
            ;;
  	 esac
      printf "\n\n${BPurple}\t"
  	    read -p "Press enter to continue"
        printf "\n\n${noc}"
    bash load.sh

       done
fi
if [ $mark -eq 0 ]
then
bash myhelp_b.sh
fi
