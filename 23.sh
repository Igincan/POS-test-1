function printLogins {
    logins=$(cut -d ":" -f 1 < /etc/passwd | tr "\n" " ")
    for login in $logins
    do
        number=$(echo $login | tr -dc 0-9)
        if [[ $login =~ [0-9] && $number -ge $1 && $number -le $2 ]]
        then
            echo $login
        fi
    done
}

printLogins $1 $2