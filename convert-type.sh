#!/usr/bin/bash

files="./init/*"
fileary=()
dirary=()
count=1

for filepath in $files; do
  if [ -f $filepath ] ; then
    fileary+=("$filepath")
  elif [ -d $filepath ] ; then
    dirary+=("$filepath")
  fi
done

echo "ファイル一覧"
for i in ${fileary[@]}; do
  paddingNumber=`printf %03d ${count}`
  output_file_name=`echo ${i,,} | cut -f 3 -d "/"`  
#  echo ${i}
#  echo ${output_file_name}
#  echo ${output_file_name,,}
  ora2pg -i $i -o ./init_output/V001_010_${paddingNumber}__${output_file_name,,} -t QUERY  
  count=$(expr $count + 1)
done

echo "ディレクトリ一覧"
for i in ${dirary[@]}; do
  echo $i
done
