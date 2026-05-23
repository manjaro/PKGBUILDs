#!/bin/env bash

eval `ssh-agent`
ssh-add $HOME/.ssh/id_rsa

### IMPORTANT!
# Make sure that you are in the root of your packaging repo before you run this script!
repo_root=$(pwd)

for pkg in $(find . -iname "PKGBUILD"  -type f -print | cut -d/ -f2-); do
  # Change to the top directory in the git status list
  echo "Found pkg: ${pkg%/*}"
  pkg_dir=${pkg%/*}
  echo "Changing directory to: {$pkg_dir}"
  cd $pkg_dir
  git add .
  pkg_name=${pkg_dir##*/}
  vers=$(cat PKGBUILD | grep pkgver= | cut -d= -f2)
  rel_vers=$(cat PKGBUILD | grep pkgrel= | cut -d= -f2)
  git commit -am "${pkg_name}: Add at ${vers}-${rel_vers}"
  git push
  cd $repo_root
done
