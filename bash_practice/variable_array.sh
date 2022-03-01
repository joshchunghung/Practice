#!/bin/bash
### for bash learning 
#  @Author : chung hung 
# 西元2021年10月20日 (週三) 15時24分53秒 CST

# debug 用
#set -x
clear 
### set
# varible
echo "################# varible ########################"
a=1
echo "int $a "
a=1.2
echo "float $a"
a=b ## text
echo "text for a=b $a"
a='b'
echo " text for a='b' $a"
b=4;a=$b
echo "b=4;a=\$b $a"

unset a
echo 'unset $a='$a

## array 1
echo "#################array 1#######################"
fileName=(a b c d e 1 2 3)
echo "\${fileName[@]} = ${fileName[@]}"
echo "echo \$fileName >> $fileName" ## ONLY  first element
echo  "echo \${fileName} >> ${fileName}" ## ONLY  first element
echo ' echo ${fileName[1]} >> '${fileName[1]}
echo ' echo ${fileName[@]:1:3} >> '${fileName[@]:1:3}
echo  "echo \${#fileName[@]} the number of the array : ${#fileName[@]}"
echo  "echo \${?fileName[@]} the number of the array : ${?fileName[@]}"

# array 2  Associative array 是以字串做陣列的索引 
# declare -A  一定要加
echo "#################array 2#######################"
echo 'declare -A Score=([bob]=85 [john]=70 [andy]=90)'
declare -A Score=([bob]=85 [john]=70 [andy]=90)
echo  "echo \${Score[bob]}  ${Score[bob]}"

