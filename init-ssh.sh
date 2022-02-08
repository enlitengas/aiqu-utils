#!/bin/bash
if [ -z $1 ]
then
    echo "Username is required"
    exit 1
fi
if [ -z $2 ]
then
    echo "Password is required"
    exit 1
fi
apt-get update -y
apt-get install -qy openssh-server sudo
mkdir /run/sshd
PATH=/usr/sbin/:$PATH
useradd -G sudo -m -s /bin/bash $1
echo "$1:$2" | chpasswd
/usr/sbin/sshd -D &
