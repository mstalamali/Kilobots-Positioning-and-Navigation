#!/bin/sh


EXPECTED_ARGS=1

if [ $# -lt $EXPECTED_ARGS ]
then
    echo "Please, specify the filename (without extension)."
    echo "Usage $0 <file-name>"
    echo $'\t'"<file-name> the name of the program you want to compile. E.g., for file test.c you must specify as parameter 'test'"
    exit
fi

cp ~/AdaptationStudy/Kilobot_Codes/local_communication/${1}.c .

sed -e "s|CLASS_FILE|${1}|g" MakefileTemplate > tmp.txt
mv tmp.txt Makefile

make $1

