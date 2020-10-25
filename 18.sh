files=$(find . -name "*.htm" -o -name "*.html" -type f | tr "\n" " ")

for file in $files
do
    fileContent=$(cat $file | tr A-Z a-z)
    echo "$fileContent" > $file
done
