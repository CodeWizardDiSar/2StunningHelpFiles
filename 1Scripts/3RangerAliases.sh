#!/bin/bash

export SHELL=/bin/bash
shift
exec ${SHELL:?} -c '
shopt -s expand_aliases
source ~/.bash_aliases
eval "$@"
' "$0" "$@"
