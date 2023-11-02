#!/bin/bash -e

source defs.sh

# the -machine flag is a must flag
# use:
# $ qemu-system-arm -machine help
# to see the list of all supported machines
qemu-system-${ARCH}\
	-kernel "${KERNEL_IMAGE}"\
	-nographic\
	-append 'console=ttyS0'
#	-append "root=/dev/ram"\
#	-append "init=/bin/sh"
#	-initrd "${INITRD_FULL_PATH}"\
#	-machine "${QEMU_MACHINE_TYPE}"\
#	-display curses
#	-serial tty
#	-append 'console=ttyS0'
#-monitor\
#	-append "console=ttyAMA0"
#	-machine virt
#	-D log.txt
#	-m 256\
#	-M virt\
#	-append "console=ttyAMA0 root=/dev/ram rdinit=/sbin/init"
##	-monitor\
# -virtfs local,path=<host_path_to_share>,security_model=passthrough,mount_tag=host_share
