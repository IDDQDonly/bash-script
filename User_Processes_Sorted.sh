#!/bin/bash

echo -n "введите УЗ: "
read user_name
echo -n "Хотите посмотреть cpu или mem? напишите (cpu или mem): "
read choise

if [ "$choise" = "mem" ]
then
    ps aux --sort -rss | grep -i $user_name
elif [ "$choise" = "cpu" ]
then
    ps aux --sort -cpu | grep -i $user_name 
else
	echo "Запусти ещё раз и прочитай внимательно"
fi


