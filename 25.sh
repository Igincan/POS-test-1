until [[ $word == q ]]
do
    read word
    echo $word >> ${word:0:1}
done