# PowerSaving_fedora_On_r558_uq or x556_uqk
I mention all tweaks to save power.
These apply to fedora30 linux. Other linux may also be benifitted but the solution may not be as direct. You can try.
After these tweaks powertop reports idle usage as 2.9 watts to 3.1 watts.

1. I use a modprobe script to modify the modules. This script disables bluetooth driver, wireless modem (i copied it from somewhere )(my pc does not has it ) and someother usb mobile broadband modems(i dont need them anyway).
copy  r556-i915.conf to /etc/modprobe.d/
to manually load bluetooth with you need it just type...  modprobe btusb


2. I use a custom systemd script to run a script at every boot and after sleep,This is because the card reader of x556_uqk/r558_uq misbehaves and eats power.
This script also disables the enp2s0 ethernet port. Disable it if you do not need it when on battery and you are fine with manually setting it up.
To disable it first you have to stop the automatic management of ethernet through NetworkManager. Then you can manually use it.
Read the network manger guide on how to do it. If you fail to do it then the interface will be back up and suck power.
To use it copy card.sh to /usr/bin/scripts_t/
and copy tripathi_after.service to /etc/systemd/system/

3 . I will also put my tlp config.
To copy tlp config - 

	1. Install tlp :D
	2. Backup default config /etc/default/tlp.
	3. Now just copy tlp (file) to it.
