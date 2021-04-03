#!/bin/sh

for file in *.sql
do
  version_number=${file:5:7}
  cut_version=`echo $file | cut -c 13-`
  replaced=`echo $cut_version | sed -e "s/__/R__${version_number}_/"`
  
  echo $file
  echo $version_number
  echo $replaced
  
  mv "${file}" "${replaced}"
    
done < ./