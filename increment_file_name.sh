#!/bin/sh
#increment file number
#for file in *.sql
#do
#     fileNumber=`echo $file | cut -d '_' -f 3`
#     afterIncrement=`echo $file | sed -e s/_${fileNumber}_/_$(expr $fileNumber + 1)_/`
#
#     echo ${afterIncrement}
#     mv "${file}" "${afterIncrement}"
#done

#change file number
count=1
for file in *.sql
do
    minorVersion=`echo $file | cut -d '_' -f 2`
    incrementMinorVersion=5
    changedMinorVersion=`printf %03d ${incrementMinorVersion}`

    fileNumber=`echo $file | cut -d '_' -f 3`
    changedFileNumber=`printf %03d ${count}`

    fileName=`echo $file | sed -e s/_${fileNumber}_/_${changedFileNumber}_/`

    changedFileName=`echo $fileName | sed -e s/_${minorVersion}_/_${changedMinorVersion}_/`

    echo ${changedFileName}
    mv "${file}" "${changedFileName}"

    count=`expr ${count} + 1`

done