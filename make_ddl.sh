#!/bin/sh

fileNumber=392

while read line
do
    paddingNumber=`printf %03d ${fileNumber}`
    echo V001_001_${paddingNumber}__$line.sql
    touch ./DDL/V001_001_${paddingNumber}__$line.sql
    fileNumber=`expr ${fileNumber} + 1`
done < ./new_table
