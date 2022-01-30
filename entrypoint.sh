#!/bin/sh -l

set -e

echo "::exho::on"

if [ $1 == "yes" ];
then
    echo "::notice ::Yes works"
fi

echo "::notice ::Access to env $GITHUB_ACTION"
echo "::notice ::Access to env $MY_ENV"
echo "Hello $1"
echo "Hello $2"
time=$(date)
echo "::set-output name=output1::$time"
touch test.txt
echo "Some staff to file" > test.txt