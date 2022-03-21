#!/bin/bash
account_file="user.dat"
cat /dev/null > $account_file
touch $account_file

dialog --title "User Account Addtion" --msgbox "\n\n\nUser Account Addtion App" 10 20

if [ $? != 0 ]
then
	dialog --infobox "Thank you" 5 20
	sleep 2
	dialog --clear
	clear
	exit 0
fi

username=$(dialog --stdout --title 'User info' --inputbox 'User Name ' 9 30)
userid=$(dialog --stdout --title 'User info' --inputbox 'User ID ' 9 30)
groupid=$(dialog --stdout --title 'User info' --inputbox 'Gorup ID ' 9 30)
comment=$(dialog --stdout --title 'User info' --inputbox 'Comment ' 9 30)
echo -en "$username," >> $account_file
echo -en "$userid," >> $account_file
echo -en "$groupid," >> $account_file
echo -e "$comment," >> $account_file

dialog --title "User Account Info" --textbox user.dat 10 40

input="user.dat"
while IFS=',' read -r username userid groupid comment
do
	useradd -u "$userid" -g "$groupid" -c "$comment" -m "$username"
done < "$input"

tail -3 /etc/passwd > temp
dialog --title "User Account Create Success" --textbox temp 10 60
rm -rf temp

dialog --clear
clear

