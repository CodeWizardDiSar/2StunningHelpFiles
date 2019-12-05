#!/bin/bash

templatesDir="$HOME/Desktop/2_Github/2_stunningHelpFiles/2_Templates"
filesDir="1_files"
dirsDir="2_dirs"

case $1 in
  Makefile) cp $templatesDir/$filesDir/4_Makefile $1;;
  *) case "${1##*.}" in
       c) cp $templatesDir/$filesDir/1.c $1; vim $1;;
       sh) cp $templatesDir/$filesDir/2.sh $1; vim $1;;
       hs) cp $templatesDir/$filesDir/3.hs $1; vim $1;;
       latexDir)
         cp -r $templatesDir/$dirsDir/1_latex $1; vim $1/1_code/1.tex;;
       *) echo "template for the extention ${1##*.} not supported"
     esac
esac
