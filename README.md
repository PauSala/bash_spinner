# bash_spinner
Simple spinner for bash scripts

## Usage
./spinner.sh [ -p title_color ] [ -s spinner_color ] [ -t tick_color ] [ -r quoted_spinner_string ] PID [ action_title ]

It takes a process PID and optional title to display and shows the title with a litle animation while process is running. When process stops a green tick apears near the title. 
Can take 4 optional parameters to configure the title_color, the spinner_color, the tick_color and a quoted string representing spinner steps, some cool ones are:  
-  "▵▹▿◃"  
-  "△▷▽◁"   
-  "·:⁖⁘⁙⁘⁖:"   
-  "⬖⬘⬗⬙"  
-  "⋮⋰⋯⋱"  

## Examples
sleep 2 & ./spinner.sh "$!" "Action 1"
sleep 2 & ./spinner.sh -p green -s blue "$!" "Action 2" 
sleep 2 & ./spinner.sh -p green -s blue -t lpurple "$!" "Action 3"
sleep 2 & ./spinner.sh -p green -s blue -t lpurple -r "△▷▽◁" "$!" "Action 4"

## Avaliable colors
black, red, green, orange, blue, purple, cyan, lgray, dgray, lred, lgreen, yellow, lblue, lpurple, lcyan and white

That are mapped to standard bash colors: 
Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37
