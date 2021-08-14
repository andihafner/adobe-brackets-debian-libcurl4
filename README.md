# adobe-brackets-debian-libcurl4
## Script which installs Adobe Brackets 1.14.1 on Debian based Distros with libcurl4 bindings. ##

Adobes support for Brackets ends on September 2021

There exists a snap package but its installation seems to lead to the issue that the Extenstion Manager of Brackets doesn't show any entries.

On the other hand, on newer Debian Based Distros the Package Manager refuses the Installation of the corresponding Debian Package due to its dependeny of libcurl3.

The provided Shell Script downloads and modifies the mentioned Package so it can be installed nevertheless.

It's based on the method described here:
https://askubuntu.com/questions/1238601/brackets-no-extensions-available

This work is licensed under an Apache License Version 2.0
