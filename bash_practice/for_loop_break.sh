#!/bin/bash
echo '### break is stop the loop'
for i in 1 2 3 4 5  ;do  
    echo "Test $i..."  
    if [ "$i" -eq "3" ]; then  
        echo "Break!"  
        break  
    fi  
done  