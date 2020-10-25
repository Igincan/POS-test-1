logins=$(cut -d ":" -f 1 < /etc/passwd | tr "\n" " ")

if [[ $3 == f ]]
then
    echo > $4
fi

for login in $logins
do
    number=$(echo $login | tr -dc 0-9)
    if [[ $login =~ [0-9] && $number -ge $1 && $number -le $2 ]]
    then
        if [[ $3 == f ]]
        then
            echo $login >> $4
        elif [[ $3 == d ]]
        then
            mkdir $login
        fi
    fi
done