#!/bin/bash
cd $(dirname $0)
./begin-document.sh $1 $2 $3
while read line; do
    echo $line
done
./end-document.sh