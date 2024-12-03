#!/bin/bash
########## ex4.sh ##########

sentence="Learning Bash scripting is powerful!"
fruits=(apple banana cherry grape)
echo "$sentence"
echo "${#sentence}"
echo "${sentence:9:4}"
echo "${sentence//Bash/Shell}"
echo "$(echo $sentence | rev)"
echo "${fruits[*]}"
echo "${fruits[0]}"
echo "${fruits[-1]}"
echo "${#fruits[@]}"
echo "${fruits[*]//*[^a]*}"


text="Hello World"
echo $text
echo "$text"
echo ${#text}
echo ${text:0:5}
echo ${text^^}
echo ${text,,}


for i in $(seq 1 5)
do
    echo -n "Number $i: "
    result=$((i*i+3))
    echo $(($result%7))
done

number=$1
if [ $(($number % 2)) -eq 0 ]; then
    echo "$number is even"
else
    echo "$number is odd"
fi

calculate() {
    echo "$1 + $2" | bc
    echo "$1 * $2" | bc
}

for i in 2 4 6 8
do
    s=$(calculate $i 3 | head -1)
    p=$(calculate $i 3 | tail -1)
    echo "S for $i: $s"
    echo "P for $i: $p"
done

calculate() {
    sf=$(($1*$1))
    cf=$(($1*$1*$1))
    echo $sf
    echo $cf
}

for num in $(seq 1 5)
do
    echo "Calculs pour $num:"
    s=$(calculate $num | head -1)
    c=$(calculate $num | tail -1)
    echo "s de $num : $s"
    echo "c de $num : $c"
done
