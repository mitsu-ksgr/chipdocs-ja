#! /bin/bash
#===============================================#
#   C.H.I.P. Documents of Japanese.             #
#   gitbook build helper script.                #
#===============================================#

gitbook build
if [ "$?" -ne 0 ]; then
    exit 1
fi

# Replace a symlink to images in _book with real directory.
rm ./_book/images
cp -r ./../origin/source/images ./_book/images

echo "chipdocs-ja book build succeeded!!! ⁽⁽٩(๑˃̶͈̀ ᗨ ˂̶͈́)۶⁾⁾ "
