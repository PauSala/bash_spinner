#!/bin/bash
sleep 2 & ./spinner.sh "$!" "Action 1"
sleep 2 & ./spinner.sh -p green -s yellow "$!" "Action 2" 
sleep 2 & ./spinner.sh -p green -s orange -t lpurple "$!" "Action 3"
sleep 2 & ./spinner.sh -p green -s red -t lpurple -r "△▷▽◁" "$!" "Action 4"

