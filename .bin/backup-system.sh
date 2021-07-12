#!/bin/bash
#

OS=$(cat /etc/os-release | grep ^ID | cut -d= -f2-)
DIR="$HOME/.system/$OS"
[[ -d "$DIR" ]] || echo "Not found: $DIR"

for file in $(tree -fi --noreport $DIR)
do
    sysfile=$(echo $file | sed "s|$DIR||g" )
    if [[ -f $sysfile ]]; then
    sudo cp -v "$sysfile" "$file"
   elif [ -d $sysfile -o -z $sysfile ]; then
        echo -n
    else
    	echo "error: $sysfile don't exist"
    fi
    
        
   
done

