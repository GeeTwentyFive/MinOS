#!/bin/bash


if ! [ $(id -u) = 0 ]; then
	echo "ERROR: You must run script as root"
	exit 1
fi


echo "Installing pacman packages..."

pacman -Syu --noconfirm \
base-devel \
xorg-server \
xorg-xinit \
cachy-gaming-meta \
zip \
fuse2 \
ksnip


echo "Installing window manager.."

curl https://raw.githubusercontent.com/GeeTwentyFive/fwm/refs/heads/main/fwm.c > fwm.c
exec gcc -O2 -march=x86-64-v2 -mtune=native fwm.c -lX11 -o /usr/bin/fwm
chmod +x /usr/bin/fwm
rm fwm.c


echo "Installing remove-accel script..."

curl https://raw.githubusercontent.com/GeeTwentyFive/LinuxDisableMouseAccel/refs/heads/main/remove-accel.sh > /usr/bin/remove-accel
chmod +x /usr/bin/remove-accel


echo "Installing qexec..."

curl https://raw.githubusercontent.com/GeeTwentyFive/LinuxQuietExec/refs/heads/main/qexec > /usr/bin/qexec
chmod +x /usr/bin/qexec


echo "Writing X11 init script (~/.xinitrc)..."

echo "remove-accel" > ~/.xinitrc
echo "exec fwm alacritty ksnip -r" >> ~/.xinitrc


echo "Disabling boot menu..."

echo "timeout 0" >> /boot/loader/loader.conf


echo "Disabling splash screen and quiet boot mode..."

echo 'LINUX_OPTIONS="zswap.enabled=0 nowatchdog"' > /etc/sdboot-manage.conf
sdboot-manage gen


echo "MinOS installation finished! Rebooting..."

reboot
