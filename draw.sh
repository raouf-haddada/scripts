#!/bin/bash

Elektek=( 'Raphael' 'Raouf' 'Zied' 'Sandra' 'Nchoana' 'Nicolas' ) 

colors=$(shuf -i 31-37 -n 7)$(echo && shuf -i 92-96 -n 5)

scolors=$(echo $colors | tr ' ' '\n'| shuf ) 

color_codes=(`echo $scolors | sed 's/ /\n/g'`) 

echo "The Elektek daily draw of: $(date)" 

shuf -e "${Elektek[@]}" | nl | while 
	((i++)); 
	read -r line; 
	do 
	  color_code=${color_codes[$i]}; 
	  echo -e "\e[1;${color_code}m$line\e[0m"; 
	  sleep .5; 
  	done
	
echo Have a nice Daily
