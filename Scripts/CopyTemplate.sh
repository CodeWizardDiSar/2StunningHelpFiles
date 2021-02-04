#!/bin/bash

cd ../Templates
case $1 in
  Makefile) cp Files/5Makefile $1;;
  *) case "${1##*.}" in
       c)   cp Files/1.c $1;vim $1;;
       sh)  cp Files/2.sh $1;chmod 700 $1;vim $1;;
       hs)  cp Files/3.hs $1;vim $1;;
       py)  cp Files/4.py $1;chmod 700 $1;vim $1;;
       ltx) cp -r Directories/Latex $1; vim $1/Code/code.tex;;
       *) echo "template for the extention ${1##*.} not supported"
     esac
esac
