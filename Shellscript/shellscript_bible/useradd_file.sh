#!/bin/bash

input="user.dat"
while IFS=',' read -r username userid groupid comment
do
	echo "Adding $username"
	useraddd -u "$userid" -g "$groupid" -c "$comment" -m "$username"
done < "$input"
