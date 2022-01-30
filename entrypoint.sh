#!/bin/sh -l

set -e

if [ "$1" = "yes" ]; then
    # vsce package
    toush test.txt
    filelist=(`ls *.txt`)
    file=`realpath "$PWD/${filelist[*]}"`
    echo "::notice ::Generating a VSIX file at $file"
    echo "::set-output name=vsix_path::$file"
fi
# vsce publish -p $2



#!/bin/sh -l

# set -e

# echo "::exho::on"

# if [ $1 == "yes" ];
# then
#     echo "::notice ::Yes works"
# fi

# echo "::notice ::Access to env $GITHUB_ACTION"
# sh -c "echo '::notice ::Access to env $GITHUB_REPOSITORY'"
# echo "::notice ::Access to local env $MYDATA"
# echo "Hello $1"
# echo "Hello $2"
# time=$(date)
# echo "::set-output name=output1::$time"
# touch test.txt
# echo "Some staff to file" > test.txt