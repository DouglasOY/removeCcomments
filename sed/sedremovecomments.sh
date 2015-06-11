#!/bin/bash


for f in `cat chlist`
do
    # ls -l ${f}
    echo ${f}
    dir=$(dirname ${f})
    filename=$(basename ${f})
    # echo ${dir}"       "${filename}
    filenew=${filename}.bak
    fnew=${dir}/${filenew}
    # echo ${fnew}
    sed -n -f remcoms3.sed  ${f} > ${fnew} 
    ls -l ${fnew}
    rm ${f}
    mv ${fnew} ${f}
done

