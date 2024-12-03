#!/bin/bash
########## ex2.sh ##########

# 1. a.

echo $(($1 ** 2))

# 1. b.

sum=""
n=$1
while [ $n -gt 0 ]; do
    sum+=$(($n % 3))
    n=$(($n / 3))
done

echo $sum | rev

# 1. c.

sum=""
n=$1
hex_chars="0123456789ABCDEF"
while [ $n -gt 0 ]; do
    remainder=$(($n % 16))
    sum=${hex_chars:$remainder:1}$sum
    n=$(($n / 16))
done

echo $sum

# 2.

for file in $(ls); do
    if [ -f $file ] && [[ "$file" == *.log ]]; then
        mv $file $file.back
    fi
done

# 3.

sumInt() {
    if [ $1 -eq 0 ]; then
        echo 0
    else
        echo $(($1 + $(sumInt $(($1 - 1)))))
    fi
}

echo $(sumInt $1)

# 4.

read -p "Enter a phrase: " phrase

echo $phrase | tr 'aeiouy' 'AEIOUY'

# 5.

echo "$phrase" | tr -d ' ' | grep -o . | sort | uniq -c

# 6.

read -p "Enter a number: " n

for i in $(seq 1 $n); do
    if [ $(($i % 2)) -eq 0 ]; then
        [ $(($n - $i)) -lt 2 ] && echo "$i" || echo -n "$i, "
    fi
done

# 7.

if [[ $1 =~ ^[0-9]+$ ]]; then
    echo $((3 ** $1))
fi

# 8.

min=$1
for i in $(shift $*); do
    if [ $i -lt $min ]; then
        min=$i
    fi
done

echo $min

max=$1
for i in $(shift $*); do
    if [ $i -gt $max ]; then
        max=$i
    fi
done

echo $max

echo $(($max - $min))

# 9.

read -p "Saisir mois: " month

case $month in
    1|3|5|7|8|10|12)
        echo "31 jours"
        ;;
    4|6|9|11)
        echo "30 jours"
        ;;
    2)
        echo "28 jours"
        ;;
    *)
        echo "Mois invalide"
        ;;
esac

# 10.

letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z)
digits=(0 1 2 3 4 5 6 7 8 9)

for i in $(seq 1 4); do
    echo -n "${letters[$(($RANDOM % 52))]}${digits[$(($RANDOM % 10))]}"
done
echo

# 11.

read -p "Enter a directory: " n

if [ -d $n ]; then
    tar -czf $n.tar.gz $n
else
    echo "Directory does not exist"
fi

# 12.

for x in $*; do
    if [ -f $x ]; then
        echo "$x est un fichier"
    elif [ -d $x ]; then
        echo "$x est un répertoire"
    else
        echo "$x n'existe pas"
    fi
done