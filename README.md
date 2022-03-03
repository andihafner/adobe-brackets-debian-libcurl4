# adobe-brackets-legacy4linux
## Script which installs Adobe Brackets 1.14.1 on current Debian based Distros. ##

Adobes support for Brackets ends on September 2021. They recommend to switch to MS Visual Studio Code, which of course isn't a bad choice, but some People still like to work with Brackets furthermore.

There exists a snap package, 'cprov-brackets', but in it's current Version 1.11 it leads to a disfunctional Extensions Manager.

There are also classic Debian Packages on Adobes github repository, but with newer Debian based Distros, their Package Manager refuses the Installation due to the dependency to libcurl3, also they lack valid URLs for the Extensions repository.

The provided Shell Script downloads the mentioned Package and modifies its dependency list so it can be installed nevertheless. It's some sort of hack under the premise, that libcurl4 provides its functions in similar ways as its predecessor did, which, in case of Brackets, seems to work so far.

It further fixes the URL entries for the last known extensions repository, so the Extensions Manager of Brackets can be used again.

It repacks the original Package as described here:
https://askubuntu.com/questions/1238601/brackets-no-extensions-available

The extensions repositorys' URLs are extracted from here:
https://github.com/Ghst-dg/Brackets_Extension_Fix


This work is licensed under an Apache License Version 2.0 by andihafner.com 2022
