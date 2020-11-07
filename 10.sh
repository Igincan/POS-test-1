grep -ir $USER /etc 2> /dev/null | cut -d ":" -f 1 | sort | uniq -c
# find /etc -type f -exec grep -H $USER {} \; 2> /dev/null | cut -d ":" -f 1 | sort | uniq -c > find.txt