esxcli network firewall ruleset set -e true -r httpClient
esxcli software sources profile list -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml | grep ESXi-6.5.0
esxcli software profile update -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml -p ESXi-6.5.0-20170702001-standard

# no disk space error

wget http://hostupdate.vmware.com/software/VUM/PRODUCTION/main/esx/vmw/vib20/tools-light/<package name>.vib
esxcli software vib install -f -v /tmp/<package name>.vib
esxcli software profile update -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml -p ESXi-6.5.0-20170702001-standard
