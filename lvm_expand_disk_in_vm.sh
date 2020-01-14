# https://unix.stackexchange.com/a/98374/261284
cfdisk /dev/sda1
sudo reboot
sudo pvresize /dev/sda
sudo lvextend -r -l +100%FREE /dev/VGNAME/LVNAME
