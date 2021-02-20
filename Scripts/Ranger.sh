#!/bin/bash

ranger --choosedir=$HOME/.rangerdir
rangerdir=$(cat $HOME/.rangerdir)
cd $rangerdir
