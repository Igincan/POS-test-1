readonly WORDS_OUTPUT=words.txt
mode=1

echo > $WORDS_OUTPUT
until [[ $word == q ]]
do
    read word
    if [[ $mode == 1 ]]
    then
        echo $word >> $WORDS_OUTPUT
    elif [[ $mode == 2 ]]
    then
        mkdir $word
    fi
    if [[ $word == heslo ]]
    then
        if [[ $mode == 1 ]]
        then
            mode=2
        elif [[ $mode == 2 ]]
        then
            mode=1
        fi
    fi
done

words=$(cat $WORDS_OUTPUT | sort)
echo "$words" > $WORDS_OUTPUT