#!/bin/bash 
adobe=('Flash' 'Flex' 'Photoshop' 'Dreamweaver' 'Premiere')
echo '### for item in ${adobe[@]}  type'
for item in ${adobe[@]};do
    echo $item
done

echo '### (( i=0;i<${#adobe[@]};i++ )) type'

for ((i=0;i<${#adobe[@]};i++));do
    echo ${adobe[$i]}
done

echo '### $(command ) type '
name=f
for f in $(ls ${name}*);do
    echo $f
done

echo '### for ext in cpg dbf prj shp shx  type'
for ext in cpg dbf prj shp shx;do
    echo "a.${ext}"
done 

