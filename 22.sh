lastNames=$(cat /etc/passwd | cut -d ":" -f 5 | cut -d " " -f 2 | tr "\n" " ")

echo > wanted.txt
echo > other.txt

for lastName in $lastNames
do
    if [[ $lastName =~ ^$1 ]]
    then
        echo $lastName >> wanted.txt
    else
        echo $lastName >> other.txt
    fi
done