fsck.ext4 /dev/vg_centos6/lv_root
e2fsck -f /dev/vg_centos6/lv_root
resize2fs -p /dev/vg_centos6/lv_root 65G  # TARGET, not DIFF
lvreduce -L 65G /dev/vg_centos6/lv_root
lvdisplay /dev/vg_centos6/lv_root

swapoff -v /dev/VolGroup00/LogVol01
lvm lvresize /dev/VolGroup00/LogVol01 -L +256M
mkswap /dev/VolGroup00/LogVol01
swapon -va
