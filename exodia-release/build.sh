#!/bin/sh

#
# @author : Mahmoud Mohamed (Ozil) <mmsaeed509@gmail.com> , <https://github.com/mmsaeed509>
#

echo ""
echo "############################"
echo "# Making the package...... #"
echo "############################"
echo ""

makepkg -sc --noconfirm
mkdir -p ../x86_64
mv *.pkg.tar.zst ../x86_64

echo ""
echo "############"
echo "# D O N E! #"
echo "############"
echo ""
