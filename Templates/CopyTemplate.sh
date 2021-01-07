#!/bin/bash

scriptDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
case $1 in
  Makefile) cp $scriptDir/Files/5Makefile $1;;
  *) case "${1##*.}" in
       c)   cp $scriptDir/Files/1.c $1;vim $1;;
       sh)  cp $scriptDir/Files/2.sh $1;chmod 700 $1;vim $1;;
       hs)  cp $scriptDir/Files/3.hs $1;vim $1;;
       py)  cp $scriptDir/Files/4.py $1;chmod 700 $1;vim $1;;
       ltx) cp -r $scriptDir/Directories/Latex $1; vim $1/1Code/1.tex;;
       *) echo "template for the extention ${1##*.} not supported"
     esac
esac
