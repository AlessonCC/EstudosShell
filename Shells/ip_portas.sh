#! /bin/bash


echo "IP Externo: $(curl -s ifconfig.co)"
echo "IP interno: $(sudo ifconfig | grep "inet" | grep "broadcast" | cut -d" " -f10)"
