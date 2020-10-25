function printFullName {
	login=$1
	
	cat /etc/passwd | grep ^$login: | cut -d ":" -f 5
}

printFullName $1
