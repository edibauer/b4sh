#!/bin/bash

files=$(ls)
s_file=$1
let loc=0
l_file=""

if [[ -z "$s_file" ]]; then
  echo "Nothing to find"
  exit 1
fi

for file in $files; do
  if [ $file == $s_file ]; then
    loc=1
    l_file=$file
  fi
done

if [ $loc == 1 ]; then
  echo "Found $l_file"
elif [ $loc == 0 ]; then
  echo "Can't find $s_file"
fi

# sol1
##if [ -z $1 ] ; then
  ##echo "Nothing to find"
##elif [ -e $1 ] ; then
  ##echo "Found $1"
#else
  #echo "Can't find $1"
#fi

# sol2
# [ -z $1 ] && echo "Nothing to find" || [ -e $1 ] && echo "Found $1" || echo "Can't find $1"
