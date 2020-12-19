# https://glennsarti.github.io/blog/getting-started-with-windows-containers/#network-address-translation-nat

New-ContainerNetwork –Name nat1 –Mode NAT –SubnetPrefix 172.16.0.0/16 -GatewayAddress 172.16.0.1
Get-Netnat | Remove-NetNAT
New-ContainerNetwork –name nat2 –Mode NAT –SubnetPrefix 172.17.0.0/16 -GatewayAddress 172.17.0.1
Get-Netnat | Remove-NetNAT
