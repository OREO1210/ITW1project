noc='\033[0m'             # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
On_IPurple='\033[0;105m'  # Purple
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
BYellow='\033[1;33m'      # Yellow
IRed='\033[0;91m'         # Redclear
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BRed='\033[1;31m'         # Red

p=$1
if [[ $p == 1 ]]
then
	while true
	do
	   clear
	   printf "\t\t ${BYellow}TEXT PROCESSING COMMANDS ${noc}"
	   echo -e "\n"
	   echo "1 -- Search a file for a pattern"
	   echo "2 -- Count lines, words, and characters in specified files"
	   echo "3 -- Display line differences between two files"
	   printf "${Red}4 -- Exit ${noc}"
       printf "\n"
	   echo -e "\t\t ${Cyan}Enter your choice:${noc}"
	   read a
	   case "$a" in
		    1) echo "Name of the file in which you want to find the pattern:"
	      	  read f
              if [ ! -f $f ]
                 then 
                    printf " $f : ${Red}NOT FOUND ${noc}\n"
              else 
                   echo "Type the pattern which you want to search:"
		             read pat  
                     grep --color $pat $f  
                   if [[ $? != 0 ]]; then
    				   printf "\n${Red}The entered pattern does not exist\n${noc}"
	
                 fi
              fi
               ;;
		  2) echo "Type the name of the file:"
		    read myf
            if [ ! -f $myf ]
            then 
               printf " $myf : ${Red}NOT FOUND ${noc}"
            else 
		        printf "number of lines in file :"
		         wc -l $myf | awk '{print $1 }'
                 printf "number of words in file :"
		         wc -w $myf |awk '{print $1}'
                 printf "number of characters in file :"
		         wc -c $myf |awk '{ print $1}'
            fi
            ;;
	     3) echo "Type the name of first file:"
		   read f1
           if [ ! -f $f1 ]
            then 
               printf " $f1 : ${Red}NOT FOUND ${noc}"
            else
		       echo "Type the name of second file:"
		       read f2
               if [ ! -f $f2 ]
                  then 
                    printf " $f2 : ${Red}NOT FOUND ${noc}"
		          else
                    diff $f1 $f2 
                fi
            fi
			;;
		4)  bash load.sh
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
if [[ $p == 0 ]]
then
	while true
	do
	   clear
	   printf "\t\t ${BYellow}TEXT PROCESSING COMMANDS${noc}"
	   echo -e "\n"
	   echo "1 -- Search a file for a pattern"
	   echo "2 -- Count lines, words, and characters in specified files"
	   echo "3 -- Display line differences between two files"
	   printf "${Red}4 -- Quit -- Return to Main Menu ${noc}"
	   echo -e "\n"
	   printf "${Cyan}\t\t  Enter your choice: ${noc}"
	   read a
	   case "$a" in
	   	  1) echo "Name of the file in which you want to find the pattern:"
	      	  read f
              if [ ! -f $f ]
                 then 
                    printf " $f : ${Red}NOT FOUND ${noc}"
              else 
                   echo "Type the pattern which you want to search:"
		             read pat    
                     grep --color $pat $f
                   if [[ $? != 0 ]]; then
    				   printf "${Red}The entered pattern does not exist\n${noc}"
                    fi
              fi
			 ;;
              
		  2) echo "Type the name of the file:"
		    read myf
            if [ ! -f $myf ]
            then 
               printf " $myf : ${Red}NOT FOUND ${noc}"
            else 
		        printf "number of lines in file :"
		         wc -l $myf | awk '{print $1 }'
                 printf "number of words in file :"
		         wc -w $myf |awk '{print $1}'
                 printf "number of characters in file :"
		         wc -c $myf |awk '{ print $1}'
            fi
            ;;
	     3) echo "Type the name of first file:"
		   read f1
           if [ ! -f $f1 ]
            then 
               printf " $f1 : ${Red}NOT FOUND ${noc}"
            else
		       echo "Type the name of second file:"
		       read f2
               if [ ! -f $f2 ]
                  then 
                    printf " $f2 : ${Red}NOT FOUND ${noc}"
		          else
                     diff $f1 $f2 
                fi
            fi
             ;;
	   	4) mark=0
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
if [[ $mark == 0 ]]
then
   bash myhelp_b.sh
fi

      
