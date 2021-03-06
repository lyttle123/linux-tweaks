#! /bin/sh
#
# paths.sh
# Copyright (C) 2018 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#



##
# PATHs
##
SOURCE_DIR="/home/toran"
REPO_DIR="linux-tweaks"

##
# backup_confs.sh
##
# BAK_DIR="$(date +"%Y-%m-%d-%I:%M:%S")"
BAK_DIR="backups"

IS_NEW=false


if  [ "$(hostname)" = mint-ThinkPad-L440 ]; then
    EROOT="/mnt/ExternalHDD/E"
    DROOT="/mnt/ExternalHDD/D"
elif [ "$(hostname)" = mint-ethereal ]; then
    EROOT="/mnt/Other/toran/E"
elif [ "$(hostname)" = ip-172-31-24-111 ]; then
    SOURCE_DIR="/home/ubuntu"
    EROOT="/home/ubuntu"
elif [ "$(hostname)" = DESKTOP-35VDAC5 ] && [ "$(uname)" = Linux ]; then
    SOURCE_DIR="/home/toran"
    EROOT="/mnt/g/toran/E"
elif [ "$(hostname)" = DESKTOP-35VDAC5 ]; then
    SOURCE_DIR="/c/Users/Toran"
    EROOT="/g/toran/E"
elif [ "$(hostname)" = ip-172-31-18-37 ]; then
    SOURCE_DIR="/home/ubuntu"
    EROOT="/home/ubuntu/toran"
 elif [ "$(hostname)" = ip-172-31-18-57 ]; then
    SOURCE_DIR="/home/ubuntu"
    EROOT="/home/ubuntu/toran"
elif [ "$(hostname)" = ToranS-PC ]; then
    SOURCE_DIR="/c/Users/torans"
    EROOT="/e/E"
elif [ "$(hostname)" = ToranS-UB ]; then
    SOURCE_DIR="/home/torans"
    EROOT="/mnt/Other/E"
elif [ "$(hostname)" = ToranS-ublp ]; then
    SOURCE_DIR="/home/toransahu"
    EROOT="/home/toransahu/disk/E"
elif [ "$(hostname)" = raspberrypi ]; then
    SOURCE_DIR="/home/pi"
    EROOT="/home/pi/main-storage/E"
else
    echo "New device found. Make entry in the script.."
    IS_NEW=true
fi

WORKSPACE="$EROOT/workspace"
TARGET_DIR="$WORKSPACE/$REPO_DIR/$BAK_DIR"

if [ $IS_NEW = false ] ; then
    echo "All seems good. You're on computer: $(hostname)"
fi
