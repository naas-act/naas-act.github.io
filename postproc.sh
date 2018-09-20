#! /bin/sh

cond="( -depth 2 -or -depth 3 ) -and ( -name index.md -or -name index.html )"

for file in $(find past-events $cond); do
    dir=$(dirname -- "$file")
    name=$(basename -- "$file")
    ext="${name##*.}"
    base="${name%.*}"

    cp "$file" "$dir/$base-year.$ext"
    echo cp "$file" "$dir/$base-year.$ext"

    # echo $dir
    # echo $name
    # echo $ext
    # echo $base

    # echo $file
    # echo `basename $file`
    # echo `basename $file .md`
    # echo `basename $file .html`
    # echo `dirname $file`
    # echo
done
