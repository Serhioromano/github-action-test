#!/bin/sh -l

echo "::exho::on"

if [$1 == 'yes'];
then
    echo "::notice ::Yes works"
fi

echo "Hello $1"
time=$(date)
echo "::set-output name=output1::$time"