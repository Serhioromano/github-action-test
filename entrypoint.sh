#!/bin/sh -l

set -e

if [ $1 == "yes" ]; then
    touch test.txt
    echo "123" > test.txt
    filelist=$(ls *.txt)
    file=$(realpath "${PWD}/${filelist}")
    echo "::notice ::Generating a VSIX file at ${file}"
    echo "::set-output name=vsix_path::${file}"
fi