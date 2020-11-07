files=$(find . -mindepth 1 -maxdepth 1 -type f -executable | sort)

echo "$files" | cat -n

read -p "Run number: " number

file=$(echo "$files" | head -n $number | tail -n 1)

$file