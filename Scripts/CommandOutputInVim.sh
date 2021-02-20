#!/bin/bash

$@ > /tmp/CommandOutputInVim
vim /tmp/CommandOutputInVim
rm /tmp/CommandOutputInVim
