#!/bin/sh
for file in *.sql
do
     fileNumber=`echo $file | cut -d '_' -f 3`
     afterIncrement=`echo $file | sed -e s/_${fileNumber}_/_$(expr $fileNumber + 1)_/`

#     afterIncrement=$(expr $fileNumber + 1)
     echo ${afterIncrement}

#     After=`echo $file | cut -c 3-5`
     mv "${file}" "${afterIncrement}"
done