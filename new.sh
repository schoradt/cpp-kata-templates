#!/bin/bash

FOLDER=$1

git archive --format tar --output /tmp/kata-template.tar HEAD

mkdir -p $FOLDER

cd $FOLDER

tar -xf /tmp/kata-template.tar

rm -f new.sh
mv README_template.md README.md

git init
git add .
git commit -m 'SYS: start with kata template'

rm /tmp/kata-template.tar
