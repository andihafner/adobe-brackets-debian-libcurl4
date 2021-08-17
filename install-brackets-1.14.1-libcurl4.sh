#!/bin/bash

show_info() {                                                                   
echo -e "                                                                       
install-brackets-1.14.1-libcurl4 by kmu-net.ch / andihafner.com Version 20210815-1713
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
original_package_url_path="https://github.com/adobe/brackets/releases/download/release-1.14.1/"
original_package_name_prefix="Brackets.Release.1.14.1"
original_package_url_prefix="$original_package_url_path$original_package_name_prefix"

#-------------------------------------------------------------------------------

ask_for_continuation() {

  echo -e -n "Would you like to continue? Type [y/n] followed by ENTER: "
  read answer

}

#-------------------------------------------------------------------------------

create_temp_dir() {

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

get_deb_package() {

  original_package_name="$original_package_name_prefix.$os_arch-bit.deb"
  original_package_url="$original_package_url_path$original_package_name"
  wget $original_package_url
}

#-------------------------------------------------------------------------------

modify_package() {

  dpkg-deb -R ./$original_package_name extracted_package
  sed -i 's/libcurl3/libcurl4/g' extracted_package/DEBIAN/control
  modified_package_name=$original_package_name_prefix.$os_arch-bit-libcurl4.deb
  dpkg-deb -b extracted_package $modified_package_name
  rm -r extracted_package
  rm $original_package_name

}

#-------------------------------------------------------------------------------

install_package() {

  echo -e "\nThe next step will install the modified package \n"
  ask_for_continuation
    if [ $answer == "y" ]
    then
      sudo apt-get install gdebi-core
      sudo gdebi ./$modified_package_name
    fi
: "Why using gdebi? dpkg doesn't resolve dependencies while apt
    selects the snap package instead of the desired own package.

https://superuser.com/questions/196864/how-to-install-local-deb-packages-with-apt-get/196867  
"
}

#-------------------------------------------------------------------------------

cleaning_up() {

  echo -e "
  The next step will remove the modified installation package\n
  (but it will NOT uninstall the installed Application)\n"
  ask_for_continuation
    if [ $answer == "y" ]
    then
      rm $modified_package_name
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
      get_deb_package
      modify_package
      install_package
      cleaning_up
  fi
}

#-------------------------------------------------------------------------------

case "$1" in

#	""|"--help"|"-h")    show_help;;

  *)                   main

esac
