#!/bin/bash
sleep 2 & ./spinner.sh "$!" "Action 1"
sleep 2 & ./spinner.sh -p green -s blue "$!" "Action 2" 
sleep 2 & ./spinner.sh -p green -s blue -t lpurple "$!" "Action 3"
sleep 2 & ./spinner.sh -p green -s blue -t lpurple -r "△▷▽◁" "$!" "Action 4"

