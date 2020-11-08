#!/bin/bash

clear

if [ "$1" = "-h" ] || [ "$1" = "-?" ]
then

cat  help.txt | less

else

echo -e "\nWitaj $USER  !"
echo -e "\nOto program, bedziemy + * - /"
echo -e "Cochcesz zrobic?"
echo -e "\n\t1. Wykonaj obliczenia:"
echo -e "\t2. Wyswietl historie obliczen"
echo -e "\t3. Usun historie obliczen"
echo -e "\t4. Zamknij program"
echo -e "\nWybierz numer (1-4):"

fi

read numer

case $numer in

	1)


zapytanie="t"

while [ "$zapytanie" = "t" ] || [ "$zapytanie" = "tak" ]
do

clear

echo -e "\nwprowadz a="
read aa

echo "Podaj znaj dzialania: "
read znak

echo -e "\nwprowadz b="
read bb

echo -n "$aa $znak $bb = " >> wyniki.txt

case "$znak" in

	"+") echo -e "\nWynik z dodawania :"
	     echo "scale=2; $aa+$bb" |bc -l
	     echo "scale=2; $aa+$bb" |bc -l >> wyniki.txt
	;;

	"-") echo -e "\nWynik z odejmoawania : "
	     echo "scale=2; $aa-$bb" |bc -l
	     echo "scale=2; $aa-$bb" |bc -l >> wyniki.txt

	;;

	"*") echo -e "\nWynik z mnozenia : "
	     echo "scale=2; $aa*$bb" |bc -l
	     echo "scale=2; $aa*$bb" |bc -l >> wyniki.txt

	;;

	"/") echo -e  "\nWynik z dzielenia : "
	     echo -e "scale=2; $aa/$bb" |bc -l
	     echo "scale=2; $aa/$bb" |bc -l >> wyniki.txt

	;;
	     	
	*)   echo "Zly znak dzialania"
	     echo "error" >> wyniki.txt


esac

echo "Czy chcesz kontynuowac wykonywanie dzialan? t/n (tak/nie)?:"
read zapytanie

done
	./kalkulator1.sh
;;

	2)
		cat wyniki.txt
		echo "Wrocic do menu? (t/n)"
		read p
		if [ "$p" = "t" ]
		then
		./kalkulator1.sh
		else
		echo "Dziekuje za skorzystanie z moejgo programu"
		fi
		
;;

	3)
		echo -n > wyniki.txt
		echo "histroia usunieta"
		sleep 1
		./kalkulator1.sh
;;

	4)
		echo "Dziekuje za skorzystanie z mojego programu"
;;
	*)	echo "Zly wybor, program zostanie zrestratowany"
		sleep 3
		./kalkulator1.sh


esac
