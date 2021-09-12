#!/bin/bash

# Spinner for bash 

#COLORS
declare -A COLORS=( 
["black"]="\033[0;30m"    
["red"]="\033[0;31m"       
["green"]="\033[0;32m"      
["orange"]="\033[0;33m"      
["blue"]="\033[0;34m"      
["purple"]="\033[0;35m"      
["cyan"]="\033[0;36m"      
["lgray"]="\033[0;31m"      
["dgray"]="\033[1;30m" 
["lred"]="\033[1;31m" 
["lgreen"]="\033[1;32m" 
["yellow"]="\033[1;33m" 
["lblue"]="\033[1;34m" 
["lpurple"]="\033[1;35m" 
["lcyan"]="\033[1;36m" 
["white"]="\033[1;37m" )

#DEFAULT CONFIG
PRIMARYC="${COLORS[yellow]}"
SECONDARYC="${COLORS[cyan]}"
TICKC="${COLORS[green]}"
SPINNER="⋮⋰⋯⋱"

# Function: Print a help message.
usage() {                                       
  echo "Usage: $0 [ -p title_color ] [ -s spinner_color ] [ -t tick_color ] [ -r quoted_spinner_string ] PID [ action_title ]" 1>&2 
}
# Function: Exit with error.
exit_abnormal() {                         
  usage
  exit 1
}

# Function: Show and hide cursor.
show_cursor() {
    tput cnorm
    exit
}
hide_cursor() {
    tput civis
}

# Function: Check if color is valid.
check_valid_color() {
    if [[ ${COLORS[$1]} ]]; 
    then true
    else exit_abnormal 
    fi
}

#Get user options
while getopts "p:s:t:r:" flag; do
case "$flag" in
    p) if check_valid_color $OPTARG; then PRIMARYC="${COLORS[$OPTARG]}"     ;fi; ;;
    s) if check_valid_color $OPTARG; then SECONDARYC="${COLORS[$OPTARG]}"   ;fi; ;;
    t) if check_valid_color $OPTARG; then TICKC="${COLORS[$OPTARG]}"        ;fi; ;;
    r) SPINNER=$OPTARG;;
esac
done

PID=${@:$OPTIND:1}
TITLE=${@:$OPTIND+1:1}
#pid is mandatory
if ! [[ $PID ]]; then exit_abnormal; fi


#HIDE CURSOR
trap show_cursor INT TERM
hide_cursor

i=1
while [ -d /proc/$PID ]
do
    for i in 1 2 3 4 
        do
            echo -ne "${PRIMARYC}$TITLE ${SECONDARYC}${SPINNER:i++%${#SPINNER}:1}" "\r"; 
            sleep .1;
    done
done

echo -ne "${PRIMARYC}$TITLE ${TICKC}\xE2\x9C\x94"; 
echo " "

show_cursor
