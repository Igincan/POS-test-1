args=($@)
argsLength=${#args[@]}

for ((i=$((argsLength-1));i>=0;i--))
do
    echo ${args[i]}
done