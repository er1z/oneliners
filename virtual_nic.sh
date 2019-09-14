sudo modprobe dummy
ip link add dummy0 type dummy
ifconfig dummy0 up
