#!/bin/bash

# CONSTANT DEFINITION :

PORT = "22"
USER = "user"
IP = "127.0.0.1"
PATH_LOCAL = "/path/to/local"
PATH_DISTANT = "/path/to/distant"
PATH_TO_KEY = "ssh/key/path"
# In order to achieve maximum security, you need to create a no-login account (the dummy account), which will own the local backup
# To disable the creation of a home directory, do : useradd -M DUMMY_USER   (capital letter to the M is important !)
# To disable login to the account do the following : usermod -L DUMMY_USER
# Then to disable access to any shell, type the following : usermod -s /bin/false DUMMY_USER
DUMMY_USER = "dummy"    

# SCRIPT
scp -r -P $PORT -i $PATH_TO_KEY $USER@$IP:$PATH_DISTANT $PATH_LOCAL
chown -R $DUMMY_USER $PATH_LOCAL
chmod 000 $PATH_LOCAL
