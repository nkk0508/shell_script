#!/usr/local/bin/bash

#while read lineをする対象のファイルは、最終行に空白行を入れないと、目的の最終行を読み込まない
#TARGET_FILE=`grep "AMAZON" ./tabledef/webshop11DB_create_ora_table.sql`
fileNumber=1

#while read line
#do
#  echo V001_000_00${count}__$line.sql
#  count=`expr ${count} + 1`
#
#done < ./tabledef/hitoketa


#while read line
#do
#  touch V001_000_0${count}__$line.sql
#  cat ./tabledef/$line.SQL >./V001_000_0${count}__$line.sql
#  count=`expr ${count} + 1`
#done < ./tabledef/hutaketa

files="./specific_sequence/*"
fileary=()
dirary=()
count=377

for filepath in $files; do
  if [ -f $filepath ] ; then
    fileary+=("$filepath")
  elif [ -d $filepath ] ; then
    dirary+=("$filepath")
  fi
done

#echo "ファイル一覧"
for i in ${fileary[@]}; do
  paddingNumber=`printf %03d ${count}`
#  fileName=`echo ${i} | cut -f 3 -d "/"`
  cut_file_name=`echo ${i,,} | cut -f 3 -d "/"`
#  echo ${i}
  output_file_name=V001_002_${paddingNumber}__${cut_file_name}
#  echo ${output_file_name}
#  echo ${output_file_name,,}
#  ora2pg -i $i -o ./init_output/V001_010_${paddingNumber}__${output_file_name,,} -t QUERY
  cat ./specific_sequence/${cut_file_name} > ./${output_file_name}

  count=$(expr $count + 1)
done

#echo "ディレクトリ一覧"
#for i in ${dirary[@]}; do
#  echo $i
#done


#while read line
#do
#  paddingNumber=`printf %03d ${fileNumber}`
##  echo V001_006_${paddingNumber}__$line.sql
#  touch V001_002_${paddingNumber}__$line.sql
#  cat ./StoredProcedure/$line.SQL >./V001_006_${paddingNumber}__$line.sql
#  fileNumber=`expr ${fileNumber} + 1`
#done < ./StoredProcedure/webshop11DB_create_procedure.sql

#cat ./tabledef/webshop11DB_create_ora_table.sql | sed -n '5,379p' | awk '$0 = substr($0, 3)'
#echo $TARGET_FILE
#cd $CURRENT_DIR/../../../

#./gradlew