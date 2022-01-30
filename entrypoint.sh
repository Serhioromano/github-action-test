#!/bin/sh -l

set -e

echo "::exho::on"

if [ $1 == "yes" ];
then
    echo "::notice ::Yes works"
fi

echo "Hello $1"
echo "Hello $2"
time=$(date)
echo "::set-output name=output1::$time"
touch test.txt
echo "Some staff to file" > test.txt