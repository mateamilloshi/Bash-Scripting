#!/bin/bash
file=$1 
if [ -f $file ]; then
    echo $file "is a file."
    if [ -w $file ]; then
        echo "The file has write permission."
    fi
    if [ -x $file ]; then
        echo "The file has execute permission."
    fi
    if [ -r $file ]; then
        echo "The file has read permission."
    fi
    echo "File size:" `du -b "$file" | cut -f1` "bytes"
    if [ `du -b "$file" | cut -f1` -gt "1048576" ];then 
        echo "The file is a large file."
    elif [ `du -b "$file" | cut -f1` -gt "102400" ]; then
        echo "The file is a medium file."
    else
        echo "The file is a small file."
    fi
elif [ -d $file ]; then
    echo $file "is a directory."
    if [ -w $file ]; then
        echo "The directory has write permission."
        fi
    if [ -x $file ]; then
        echo "The directory has execute permission."
        fi
    if [ -r $file ]; then
        echo "The directory has read permission."
        fi   
fi





