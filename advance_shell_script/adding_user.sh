#!/bin/bash

add_user()
{
USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "user added successfully"

}

#MAIN

add_user krishna krish@123
