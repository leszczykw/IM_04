#!/bin/bash

clear

	if [ "$1" = "-h" ] || [ "$1" = "-?" ]
	then
	cat  help.txt | less
	else

echo -e "To jest ksiazka telefoniczna\n"
echo -e  "Cochcesz zrobic?"
echo -e "\t1. Dadaj nowy kontakt:"
echo -e "\t2. Wyswietl dane;"
echo -e "\t3. Posortuj dane;"
echo -e "\t4. Wyszukaj kontakt"
echo -e "\t5. Usun kontakt"
echo -e "\t6. Pomoc"
echo -e "\t0. Zamknij program"
echo "Podaj numer (1-6 lub 0):"

	fi

read numer

case $numer in

	1)
		./dodawanie_kontaktow.sh
;;
	2)
		./wyswietl.sh
;;
	3)
		./sortowanie.sh
;;
	4)
		./wyszukiwanie.sh
;;
	5)
		./usuwanie.sh
;;
	6)
		cat help.txt
		echo -e "\n\nPowrocic do menu (t/n)?"
		read p
		if [ "$p" = "t" ]
		then	
		./ksiazka_tel.sh
		else
		echo "Dziekuje za skorzystanie z moejgo programu"
		fi

	
;;
	0) echo "Dziekuje za skorzystanie z naszego programu"
;;
	*) echo "Zly wybor"

esac

