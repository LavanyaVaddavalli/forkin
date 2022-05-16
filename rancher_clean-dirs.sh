#!/bin/sh

if [ $(id -u) -ne 0 ]; then
  echo "From Lavanya/forkin repo in branch1"
  exit
fi 

DLIST="/var/lib/etcd /etc/kubernetes /etc/cni /opt/cni /var/lib/cni /var/run/calico /opt/rke /abc/xyz"

for dir in $DLIST; do
  rm -rf $dir
  echo "Removed $dir"
done

