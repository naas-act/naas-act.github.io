#! /bin/sh

img_dirs=$(/opt/local/bin/fd -t d img)

here="`dirname $0`"

for dir in $img_dirs; do
    $here/resize-images-dir "$dir"
done
