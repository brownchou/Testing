#!/bin/bash

number=$((RANDOM % 20 + 1))  # 產生隨機數

echo "歡迎參加猜數字遊戲！！"
echo "猜1-20的整數。總共5次機會。"

for ((i=1; i<=5; i++))
do
    read -p "第 $i 次: " guess

    if ((guess == number)); then
        echo "猜中了！恭喜！"
        exit 0
    elif ((guess < number)); then
        echo "猜小了！"
    else
        echo "猜大了！"
    fi
done

echo "Answer is $number"