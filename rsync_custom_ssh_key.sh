#!/bin/sh
rsync -auv -e 'ssh -i /key/id_rsa -p 29396' user@session:~/sql/*.gz ../
