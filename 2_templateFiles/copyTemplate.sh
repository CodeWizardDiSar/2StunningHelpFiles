#!/bin/bash

templatesDir="$HOME/Desktop/2_Github/stunningHelpFiles/2_templateFiles"
case $1 in
  Makefile) cp $templatesDir/Makefile $1;;
  *) case "${1##*.}" in
       c) cp $templatesDir/1.c $1;;
       sh) cp $templatesDir/2.sh $1;;
       hs) cp $templatesDir/3.hs $1;;
       *) echo "template for the extention ${1##*.} not supported"
     esac
esac
