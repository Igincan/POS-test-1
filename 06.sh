A=$1
B=$2

if [[ $A == "" ]]
then
	read -p "A: " A
fi
if [[ $B == "" ]]
then
	read -p "B: " B
fi

for i in $(seq $A $B)
do
	mkdir Adresar$i
done
