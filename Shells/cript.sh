#!/bin/bash

if [ "$1" == "" ]; then exit; fi

s=$1
echo
echo "Frase antes da criptografia: $s"
echo
s1="$(echo $s | tr "abcdefghijklmnopqrstuvwxyz" "zyxwvutsrqponmlkjihgfedcba")"
echo
echo "Esta é a frase criptografada: $s1"

echo
exit

