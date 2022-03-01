#!/bin/bash

echo -n "你好！請輸入一個單字："
read MY_WORD

if [ "$MY_WORD" == "Pajace2001" ]; then
        echo "你輸入的不是 Pajace2001 "
elif [ "$MY_WORD" == "Pajace9527" ]; then
        echo "你輸入的是 Pajace9527"
elif [[ $MY_WORD == Pajace* ]]; then
        echo "你輸入的是 Pajace 開頭的字 - $MY_WORD "
elif [[ $MY_WORD =~ Pajace ]]; then
        echo "你輸入的是含有 Pajace 字 - $MY_WORD "
else
        echo "你輸入的是 $MY_WORD "
fi 