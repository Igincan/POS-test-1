cat /etc/passwd | cut -d ":" -f 1 | sort | cat -n > users.txt
