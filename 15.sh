all=$(cat /etc/passwd | cut -d ":" -f 1 | tr "\n" " ")
online=$(users)
for user in $all
do
	isOnline=false
	for onlineUser in $online
	do
		if [[ $user == $onlineUser ]]
		then
			isOnline=true
		fi
	done
	if [[ $isOnline == false ]]
	then
		echo $user
	fi
done
