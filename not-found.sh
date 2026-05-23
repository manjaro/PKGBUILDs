#!/bin/env bash

eval `ssh-agent`
ssh-add $HOME/.ssh/id_rsa

### IMPORTANT!
# Make sure that you are in the root of your packaging repo before you run this script!
repo_root=$(pwd)

for pkg in $(find . -iname "PKGBUILD"  -type f -print | cut -d/ -f2-); do
  # Change to the top directory in the git status list
  pkg_dir=${pkg%/*}
  pkg_name=${pkg_dir##*/}
  not_found=$(grep ${pkg_name//-git/} $repo_root/overlay-no-sig.txt)
  if [[ ".${not_found}" = "." ]]; then
     echo "pkg: ${pkg_name} not found in overlay"
     echo ${pkg_name} >> $repo_root/overlay-not.txt
     rm -r $pkg_dir
     git commit -am "${pkg_name}: Removed from Package Overlay"
     #git push
  fi
done
