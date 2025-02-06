#!/bin/bash

name="edibauer"
age=30
command=$(whoami)

echo "My name is $name and im $age years old"
echo "Current user: $command"

# conditionals
if [ "$command" == "root" ]; then
  echo "YOu are executing like super user"
elif [ "$command" == "galax0r" ]; then
  echo "you are executing like galax"
else 
  echo "there is not users"
fi

# data by user
read -p "Write the name of the current day: " day
echo "Today is $day"

read -p "Write actualizar if you want update all the system: " choose
if [ "$choose" == "actualizar" ]; then
  apt update
  apt upgrade -y
  apt autoremove -y
  echo "Actualización commpleta"
else
  echo "Command not found"
  # exit 1
fi

# loop
for i in {1..6}; do
  echo "$i"
done

files=$(ls)
for file in $files; do
  extension=$(echo $file | tr "." " " | awk '{print $2}')
  if [ "$extension" == "mp4" ]; then
    rm $file
    echo "$file has been deleted"
  else
    echo "$file has not been deleted because it has a diff extension like mp4"
  fi
done

# while
counter=1

while [ "$counter" -lt 6 ]; do
  echo "the value of counter is $counter"
  ((counter++))
done

#read -p "Insert the name of the file: " doc
# doc=fruits.txt
doc=$1 # command params

while read -r line; do
  echo $line
done < "$doc"

# function
my_func() {
  echo "functin container"
}

my_func

root_user() {
  echo "Executing like root"
}

galax_user() {
  echo "Excuting like galax"
}

error_user() {
  echo "Error"
}

if [ "$command" == "root" ]; then
  root_user
elif [ "$command" == "galax0r" ]; then
  galax_user
else
  error_user
fi


# arguments
let x=$2
let y=$3

fsum() {
  let ans=x+y

  echo $ans
}

fsum
