# Reset
noc='\033[0m'       # Text Reset
IGreen='\033[0;92m'       # Green

sleep 1 & PID=$!  #simulate a long process
printf "\n\n\n"
echo -ne " ${green}Loading...${noc}"
printf "\n"

# While process is running...
while kill -0 $PID 2> /dev/null; do 
    printf  "${IGreen}▓${noc}"
    sleep 0.05
done

printf "\n"