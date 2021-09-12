# spinner.sh
Simple spinner for bash scripts

![](https://raw.githubusercontent.com/PauSala/bash_spinner/master/sample.gif)  

## Usage
./spinner.sh [ -p title_color ] [ -s spinner_color ] [ -t tick_color ] [ -r spinner_string ] PID [ action_title ]

### Some cool spinners:  
-  "▵▹▿◃"  
-  "△▷▽◁"   
-  "·:⁖⁘⁙⁘⁖:"   
-  "⬖⬘⬗⬙"  
-  "⋮⋰⋯⋱"  

## Examples
-  sleep 2 & ./spinner.sh "$!" "Action 1"  
-  sleep 2 & ./spinner.sh -p green -s blue "$!" "Action 2"   
-  sleep 2 & ./spinner.sh -p green -s blue -t lpurple "$!" "Action 3"  
-  sleep 2 & ./spinner.sh -p green -s blue -t lpurple -r "△▷▽◁" "$!" "Action 4"  

## Avaliable colors
black, red, green, orange, blue, purple, cyan, lgray, dgray, lred, lgreen, yellow, lblue, lpurple, lcyan, white

They are mapped to bash [colors.](https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html) 

