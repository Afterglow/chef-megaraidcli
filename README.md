Description
===========
Installs MegaCLI and dependencies from deb files using cookbook_file. Also creates wrapper script in /usr/bin. Requires the user to place the necessary deb files into `files/default`. The deb files can be built from `https://www.lsi.com/downloads/Public/MegaRAID%20Common%20Files/8.04.07_MegaCLI.zip` using `alien`
Requirements
============

Attributes
==========

Usage
=====
Build deb files with alien and place them in the `files/default` folder then use `recipe[megaraidcli`. This cookbook works as a replacement to running your own deb repository (which would be a much better idea)
