#!/bin/bash
echo '### continue :: skip the one and start the next '
for i in 1 2 3 4 5  ;do  
    echo "Test $i..."  
    if [ "$i" -eq "3" ]; then  
        echo "continue!"  
        continue
    fi  
done  