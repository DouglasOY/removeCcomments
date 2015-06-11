#!/bin/bash

for f in `cat  chlist`
do
    newf=${f}.bak
    gcc -P -fpreprocessed -dD -E $f -o $newf
    echo $newf
done

