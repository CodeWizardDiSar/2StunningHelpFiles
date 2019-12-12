#!/bin/bash

scriptDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
templatesDir="$scriptDir/../2Templates"
case $1 in
  Makefile) cp $templatesDir/1Files/4Makefile $1;;
  *) case "${1##*.}" in
       c) cp $templatesDir/1Files/1.c $1;vim $1;;
       sh) cp $templatesDir/1Files/2.sh $1;chmod 700 $1;vim $1;;
       hs) cp $templatesDir/1Files/3.hs $1;vim $1;;
       ltx) cp -r $templatesDir/2Dirs/1Latex $1; vim $1/1Code/1.tex;;
       *) echo "template for the extention ${1##*.} not supported"
     esac
esac
