#!/bin/bash

a=100
b=200
c=300

if [[ $a -gt $b && $a -gt $c ]]
then
echo "A is biggest"
elif [[ $b -gt $c && $b -gt $a ]]
then
echo "B is biggest"
else
echo "C is biggest"
fi