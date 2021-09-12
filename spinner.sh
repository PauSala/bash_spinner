#!/bin/bash

# Spinner for bash 
# [Some command] ./spinner.sh "$!" [command description]

show_cursor() {
    tput cnorm
    exit
}
hide_cursor() {
    tput civis
}

CYAN="\033[1;36m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"

pid=$1
title=$2

i=1
#sp="▵▹▿◃" sp="△▷▽◁" sp="·:⁖⁘⁙⁘⁖:" sp="⬖⬗⬘⬙"
sp="⋮⋰⋯⋱"

#HIDE CURSOR
trap show_cursor INT TERM
hide_cursor

while [ -d /proc/$pid ]
do
    for i in 1 2 3 4 
        do
            echo -ne "${YELLOW}$title ${CYAN}${sp:i++%${#sp}:1}" "\r"; 
            sleep .1;
    done
done

echo -ne "${YELLOW}$title ${GREEN}\xE2\x9C\x94"; 
echo " "

show_cursor
