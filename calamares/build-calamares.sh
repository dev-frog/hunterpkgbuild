#!/bin/bash

destination1=$HOME"/code/frog/hunterrepo/x86_64"

destiny=$destination1

search1="calamares"
search=$search1

tput setaf 2
echo "[+] Let us build the package "$(basename `pwd`)
tput sgr0

updpkgsums

makepkg --sign

echo "Moving created files to " $destiny

mv $search*pkg.tar.zst $destiny
mv $search*pkg.tar.zst.sig $destiny

echo "deleting unnecessary folders"

rm -rf pkg src

echo "deleting unnecessary files"

rm -r calamares-*

tput setaf 8
echo "[+] build done"
tput sgr0