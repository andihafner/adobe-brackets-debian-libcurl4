# adobe-brackets-debian-libcurl4
## Script which installs Adobe Brackets 1.14.1 on Debian based Distros with libcurl4 bindings. ##

Adobes support for Brackets ends on September 2021. They recommend to switch to MS Visual Studio Code, which of course isn't a bad choice, but some People still like to work with Brackets furthermore.

There exists a snap package, but its installation seems to lead to the issue, that the Extenstion Manager of Brackets doesn't show any entries.

There are also classic Debian Packages, but with newer Debian Based Distros, their Package Manager refuses its Installation due to its dependency to libcurl3.

The provided Shell Script downloads the mentioned Package and modifies its dependencies list so it can be installed nevertheless. It's some sort of hack under the premise, that libcurl4 provides its functions in similar ways as its predecessor did, which, in case of Brackets, seems to work so far.

The Script repackages the Package as described here:
https://askubuntu.com/questions/1238601/brackets-no-extensions-available

This work is licensed under an Apache License Version 2.0 by andihafner.com 2021
