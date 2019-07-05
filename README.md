# PowerSaving_fedoraOn_r558_uq or x556_uqk
I mention all tweaks to save power.

1. I use a modprobe script to modify the modules. This script disables bluetooth driver, wireless modem (i copied it from somewhere )(my pc does not has it ) and someother usb mobile broadband modems(i dont need them anyway).
copy  r556-i915.conf to /etc/modprobe.d/


2. I use a custom systemd script to run a script at every boot and after sleep,This is because the card reader of x556_uqk/r558_uq misbehaves and eats power.
It also disables the enp2s0 ethernet port. Disable it if you do not need it when on battery.
To disable it first you have to stop the automatic management of ethernet through network-manager. Then you can manually use it.
Read the network manger guide on how to do it. If you fail to do it then the interface will be backup and suck power.
To use it copy card.sh to /usr/bin/scripts_t/
and copy x556_uqk_after.service to /etc/systemd/system/

3 . I will also put my tlp config.
to copy tlp. 
Install tlp :D
first backup default config /etc/default/tlp.
now just copy tlp to it.
