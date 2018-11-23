#!/bin/sh

size="2000x1400"
quality=80

usage () { 
    echo "resize-images DIR ..."
    echo "Destructively resizes all jpg files in DIR"
    exit -1
}


if [ -z $1 ]
then
    echo "No directory given"
    usage
fi
if [ ! -d $1 ]
then
    echo "not a directory: $1"
    usage
fi

if [ -e "$1/resized" ]
then
    echo "jpg files in directoy $1 are already resized"
    exit 0
fi

echo "==================================="
echo "Resizing jpg files in directory $1"
echo "==================================="
## files=$(ls -1 $1/*.jpg $1/*.JPG)
files="$1/*.[jJ][pP][gG]"
for file in $files; do
     echo $file
     convert -size $size "$file" -resize $size -quality $quality "$file"
done

touch "$1/resized"

#
