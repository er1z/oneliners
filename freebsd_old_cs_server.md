```shell
cd /usr/ports/emulators/linux_base-f10 && make install
```

`/etc/rc.conf`:
```
linux_enable="YES"
```

`/etc/fstab`:
```
linproc /compat/linux/proc linprocfs rw 0 0
```

```shell
mount /compat/linux/proc
mkdir cs
./steam -command update -game cstrike -dir cs -verify_all -retry
```
