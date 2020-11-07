online=$(users)

for onlineUser in $online
do
    grep -e ^$onlineUser: < /etc/passwd | cut -d ":" -f 1,5 | sort
done