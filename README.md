# spinner.sh
Simple spinner for bash scripts

## Usage
./spinner.sh [ -p title_color ] [ -s spinner_color ] [ -t tick_color ] [ -r quoted_spinner_string ] PID [ action_title ]

It takes a process PID and optional title and shows the title with a litle animation while process is running. When process stops a green tick apears near the title.   
Can take 4 optional parameters to configure the title_color, the spinner_color, the tick_color and a quoted string representing spinner steps, some cool ones are:  
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
[    black, red, green, orange, blue, purple, cyan, lgray, dgray, lred, lgreen, yellow, lblue, lpurple, lcyan and white   ]

They are mapped to bash [colors.](https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html) 

