# Arch 

## For Huawei D14 matebook need
* sudo vim /etc/default/grub
* Find GRUB_CMDLINE_LINUX_DEFAULT and add snd_hda_intel.dmic_detect=0 to the end of it. (ex: GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 snd_hda_intel.dmic_detect=0")
* sudo grub-mkconfig -o /boot/grub/grub.cfg
* Reboot the system.

#THIS IS WORKING
