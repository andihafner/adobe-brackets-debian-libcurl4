#!/bin/bash
: "
brackets-libcurl4 v 1.0

This script installs the latest Linux-Version of Adobe Brackets on
newer Debian based Linux Distros
Adobes support for Brackets ends on September 2021

Copyright andihafner.com 2021, CC-BY, Version 4.0
after instructions from
https://askubuntu.com/questions/1238601/brackets-no-extensions-available
"
: "
# Establish temporary directory
mkdir --parents ~/temp/brackets-libcurl4
cd ~/temp/brackets-libcurl4
"

#: "
# Get OS-Architecture
if [ $(uname --hardware-platform | grep --count x86_64) == "1" ]
  then
    os_arch="64"
  else
    os_arch="32"
fi
#"

#: "
# Downloading Debian Package
wget https://github.com/adobe/brackets/releases/download/release-1.14.1/Brackets.Release.1.14.1.$os_arch-bit.deb
#"

#: "
#os_arch="64"
#echo $os_arch
#"

