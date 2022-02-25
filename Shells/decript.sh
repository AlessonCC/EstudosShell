!/bin/bash



if [ "$1" == "" ]; then exit; fi
echo
input=$1
echo
echo "Esta é a frase criptografada: $1"
echo
p1="$(echo $input | tr "[A-Z] " " " )"
echo
for a in $p1; do
	in="$(echo $a | grep "[1-9]")"
	if [ "$in"!= "" ]; then
		let cont++
		echo "$(($cont/$a))"
	else echo "$a"
	fi
done
echo
