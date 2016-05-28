#!/bin/bash

DIR=$(cd $(dirname $0) && pwd)
CONFIG_PATH=~/

if [ -f $CONFIG_PATH/.Xdefaults ]; then
    rm -f $CONFIG_PATH/.Xdefaults.bak
    mv $CONFIG_PATH/.Xdefaults $CONFIG_PATH/.Xdefaults.bak
fi
ln -s $DIR/Xdefaults $CONFIG_PATH/.Xdefaults


if [ -f $CONFIG_PATH/.xprofile ]; then
    rm -f $CONFIG_PATH/.xprofile.bak
    mv $CONFIG_PATH/.xprofile $CONFIG_PATH/.xprofile.bak
fi
ln -s $DIR/xprofile $CONFIG_PATH/.xprofile


sudo cp $DIR/xorg.conf.d/* /etc/X11/xorg.conf.d/
sudo cp $DIR/lightdm/*.conf /etc/lightdm/
