#!/bin/bash

show_info() {                                                                   
echo -e "                                                                       
install-brackets-1.14.1-libcurl4 by kmu-net.ch / andihafner.com 2021 Version 0.1
This work is licensed under the Apache License Version 2.0

This script installs the Linux-Version 1.14.1 of Adobe Brackets on newer Debian
based Linux Distros which require the libcurl4 library instead of libcurl3.

It repacks the original Package as described here:
https://askubuntu.com/questions/1238601/brackets-no-extensions-available

"
}        

#-------------------------------------------------------------------------------

: "
Todo:
"

#--------- Declare Constants ---------------------------------------------------

temp_dir="$HOME/temp/brackets-libcurl4-install"

#-------------------------------------------------------------------------------

ask_for_continuation() {

  echo -e -n "Would you like to continue? (Type [y/n] followed by ENTER: "
  read answer

}

#-------------------------------------------------------------------------------

create_temp_dir() {

  echo $temp_dir
  mkdir --parents $temp_dir
  cd $temp_dir
}


#-------------------------------------------------------------------------------

get_os_arch() {

if [ $(uname --hardware-platform | grep --count x86_64) == "1" ]
  then
    os_arch="64"
  else
    os_arch="32"
fi
}

#-------------------------------------------------------------------------------

main() {
	show_info
  ask_for_continuation
  if [ $answer == "n" ]
    then
      echo -e "\nGood Bye...\n"
    else
      create_temp_dir
      get_os_arch
      echo "os_arch  = $os_arch"
  fi
}

#-------------------------------------------------------------------------------

case "$1" in

#	""|"--help"|"-h")    show_help;;

  *)                   main

esac

