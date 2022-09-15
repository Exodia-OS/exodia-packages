#!/usr/bin/bash

##########################################################################################################
#																										 
#    Copyright © 2022 To Cyb3rTh1eveZ																	 
#																										 
#     ██████╗██╗   ██╗██████╗ ██████╗ ██████╗ ████████╗██╗  ██╗ ██╗███████╗██╗   ██╗███████╗███████╗	 
#    ██╔════╝╚██╗ ██╔╝██╔══██╗╚════██╗██╔══██╗╚══██╔══╝██║  ██║███║██╔════╝██║   ██║██╔════╝╚══███╔╝     
#    ██║      ╚████╔╝ ██████╔╝ █████╔╝██████╔╝   ██║   ███████║╚██║█████╗  ██║   ██║█████╗    ███╔╝      
#    ██║       ╚██╔╝  ██╔══██╗ ╚═══██╗██╔══██╗   ██║   ██╔══██║ ██║██╔══╝  ╚██╗ ██╔╝██╔══╝   ███╔╝       
#    ╚██████╗   ██║   ██████╔╝██████╔╝██║  ██║   ██║   ██║  ██║ ██║███████╗ ╚████╔╝ ███████╗███████╗     
#     ╚═════╝   ╚═╝   ╚═════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═╝╚══════╝  ╚═══╝  ╚══════╝╚══════╝     
#																										 
#																										 
#																										 
#    Copyright (C) Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>								 
#    LICENSE © GNU-GPL3																					 
#																										 
##########################################################################################################

# Check if booted using 'Copy to RAM' mode #
DIR="/etc/calamares"
KERNEL=`uname -r`

if [[ -d "/run/archiso/copytoram" ]]; then
	sudo sed -i -e 's|/run/archiso/bootmnt/arch/x86_64/airootfs.sfs|/run/archiso/copytoram/airootfs.sfs|g' "$DIR"/modules/unpackfs.conf
	sudo sed -i -e "s|/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz-linux|/usr/lib/modules/$KERNEL/vmlinuz|g" "$DIR"/modules/unpackfs.conf
fi

# Launch calamare installer accordingly #
pkexec calamares -d -style kvantum
