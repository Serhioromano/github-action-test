#!/bin/bash

set -e

if [ $1 == "yes" ]; then
    touch test.txt
    echo "123" > test.txt
    filelist=(`ls *.txt`)
    file=$(realpath "${PWD}a/${filelist[*]}")
    echo $file | grep "No such file"
    echo "::notice ::Generating a VSIX file at ${file}"
    echo "::set-output name=vsix_path::${file}"
    ls -la
fi