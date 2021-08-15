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

#-------------------------------------------------------------------------------

ask_for_continuation() {

  echo -e -n "Would you like to continue? (Type [y/n] followed by ENTER: "
  read answer

}
#-------------------------------------------------------------------------------

get_os_arch() {

  echo "The answer was yes"

}

#-------------------------------------------------------------------------------

convert_hms2seconds() {
    seconds="$(echo $hms | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')"
}

#-------------------------------------------------------------------------------

main() {
	show_info
  ask_for_continuation
  if [ $answer == "n" ]
    then
      echo -e "\nGood Bye...\n"
    else
      get_os_arch
  fi
}

#-------------------------------------------------------------------------------

case "$1" in

#	""|"--help"|"-h")    show_help;;

  *)                   main

esac

