#!/bin/bash
########## ex3.sh ##########

name="JohnDoe"
echo ${#name}
echo ${name:4}
echo ${name:2:3}
echo ${NAME:-DefaultName}
echo ${name^^}
echo ${name,,}

file="project.v1.final.docx"
echo ${file#.}
echo ${file##*.}
echo ${file%.*}
echo ${file%%.}
echo ${file:=backup}
echo $file

fruits=(apple cherry mango peach)
echo ${fruits[*]}
echo ${fruits[@]}
echo ${#fruits[*]}
echo ${fruits[0]}
echo ${fruits[3]:1}
echo ${#fruits[2]}
echo ${!fruits[@]}

echo ${VarName:=DefaultVar}
echo $VarName
echo ${UNSET_VAR:-Fallbacky}
echo S{UNSET_VAR:-fallback_value}
echo ${file~}
echo ${file~~}

colors=(red blue yellow green)
colors="black ${colors[@]}"
echo colors
colors="${colors[@]} while"
echo $colors