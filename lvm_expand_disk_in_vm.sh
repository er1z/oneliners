# https://unix.stackexchange.com/a/98374/261284
sudo parted /dev/sda
parted> resizepart
sudo reboot
sudo pvresize /dev/sda1
sudo lvextend -r -l +100%FREE /dev/VGNAME/LVNAME
