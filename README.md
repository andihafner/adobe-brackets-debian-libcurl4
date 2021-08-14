# adobe-brackets-debian-libcurl4
## Script which installs Adobe Brackets 1.14.1 on Debian based Distros with libcurl4 bindings. ##

Adobes support for Brackets ends on September 2021

There exists a snap package but its installation seems to lead to the issue that the Extenstion Manager of Brackets doesn't show any entries.

On the other hand, on newer Debian Based Distros the Package Manager refuses the Installation of the corresponding Debian Package due to its dependeny of libcurl3.

The provided Shell Script downloads and modifies the mentioned Package so it can be installed nevertheless.

It's based on the method described here:
https://askubuntu.com/questions/1238601/brackets-no-extensions-available

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
