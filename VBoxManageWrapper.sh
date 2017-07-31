#!/bin/sh
/usr/bin/VBoxManage $@ | sed 's/\r$//' | awk 'BEGIN{f=0; n=0} /^WARNING: The vboxdrv kernel module is not loaded\./ && n==0 { f=1 } !/^[ ]/ && length($0)!=0 && n > 0 { f=2 } { n=n+1 } f!=1 { print }'
