#!/bin/bash

tmps="$HOME/StunningHelpFiles/Templates"

case $1 in
  Makefile) cp Files/5Makefile $1;;
  *) case "${1##*.}" in
       c)   cp $tmps/Files/1.c $1;vim $1;;
       sh)  cp $tmps/Files/2.sh $1;chmod 700 $1;vim $1;;
       hs)  cp $tmps/Files/3.hs $1;vim $1;;
       py)  cp $tmps/Files/4.py $1;chmod 700 $1;vim $1;;
       ltx) cp -r $tmps/Dirs/Latex $1; vim $1/Code/code.tex;;
       *) echo "template for the extention ${1##*.} not supported"
     esac
esac
