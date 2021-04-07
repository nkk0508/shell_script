#!/bin/sh

count=1
for file in *.sql
do
    prefix='R__001_999_'
    suffix=`echo $file | cut -d '_' -f 3-`
    changedFileName=${prefix}${suffix}
#    echo ${changedFileName}
    mv "${file}" "${changedFileName}"
    count=`expr ${count} + 1`
done