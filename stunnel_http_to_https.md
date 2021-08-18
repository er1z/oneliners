# first, generate certs:

```
cd /etc/stunnel
openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 1095
cat key.pem cert.pem >> /etc/stunnel/stunnel.pem
```

# then configuration file:
```
; Certificate/key is needed in server mode and optional in client mode
cert = /etc/stunnel/stunnel.pem
key = /etc/stunnel/key.pem

; Protocol version (all, SSLv2, SSLv3, TLSv1)
sslVersion = all

; Some security enhancements for UNIX systems - comment them out on Win32
chroot = /var/run/stunnel/

; PID is created inside the chroot jail
pid = /stunnel.pid

; Some performance tunings
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1
;compression = zlib

; Some debugging stuff useful for troubleshooting
;debug = 7
;output = /var/log/stunnel/stunnel.log
;foreground = yes

; Use it for client mode
;client = yes                     !! turn to server mode

; Service-level configuration
[wsServer]
accept = 0.0.0.0:9030
connect = 127.0.0.1:9090
```
