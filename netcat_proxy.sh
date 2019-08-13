mkfifo /tmp/fifo
nc -lk -p 8080 </tmp/fifo | nc example.org 80 >/tmp/fifo
