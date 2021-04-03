#!/bin/sh

files="../*"
fileary=()
dirary=()
for filepath in $files; do
  if [ -f $filepath ] ; then
    fileary+=("$filepath")
  elif [ -d $filepath ] ; then
    dirary+=("$filepath")
  fi
done

echo "ファイル一覧"
for i in ${fileary[@]}; do
  echo $i
done

echo "ディレクトリ一覧"
for i in ${dirary[@]}; do
  echo $i
done