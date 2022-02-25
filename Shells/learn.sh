#!/bin/bash


echo
echo "O nome desse aquivo é: $0"
echo
echo "Hello World"
echo
echo -e "Hello\n World"
echo
printf "\n\nHello world\n\n"

nome="Álesson"
echo "$nome"
echo
read -p "Voce tem 10 segundos para digitar a resposta para cada pergunta! pressione enter para confirmar!"
echo
read -t 10 -p "Qual o seu nome? >" nome1
echo
read -t 10 -p "Digite seu usuário: >" user
echo
read -t 10 -s -p "Digite sua senha: >" password
echo
echo "$nome1", "$user", "$password"
echo
cat seq.txt
echo
head seq.txt
echo
head -n 2 seq.txt
echo
head -c 5 seq.txt
echo
tail seq.txt
echo
tail -n 4 seq.txt
echo
tail -c 10 seq.txt
echo
cat seq.txt | grep --color "a"
echo



exit
