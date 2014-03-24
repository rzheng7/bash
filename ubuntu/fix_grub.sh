#!/bin/bash

#
# fix the problem after booting operation, grub stuck
#

uid=$(id -u)

if [ ! $uid = 0 ]; then
    echo "ERROR: You need to sudo access right"
    exit 1
fi

GRUB_CONFIG=/etc/default/grub

if ! egrep "^GRUB_RECORDFAIL_TIMEOUT=0$" $GRUB_CONFIG ; then
    
    cp $GRUB_CONFIG ${GRUB_CONFIG}.old
    echo "" >> $GRUB_CONFIG
    echo "# no more stuck on grub" >> $GRUB_CONFIG
    echo "GRUB_RECORDFAIL_TIMEOUT=0" >> $GRUB_CONFIG
    update-grub

    echo "GRUB patched.  No more stuck on grub"
fi

tail $GRUB_CONFIG 
