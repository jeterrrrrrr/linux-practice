#!/bin/bash

echo "您好$name，歡迎來到$channel"

num=$(shuf -i 1-10 -n 1)
echo $num

while true
do

echo "請書如一個1-10的數"
read guess

if [[ $guess -eq $num ]]; then
    echo "猜對了，是否繼續(y/n): "
    read choice

    if [[ $choice = "y" ]] || [[ $choice = "Y" ]]; then
        num=$((RANDOM % 10 + 1))
        echo $num
        continue
    else
        break
    fi
elif [[ $guess -lt $num ]]; then
    echo "小了"
else
    echo "大了"
fi

done