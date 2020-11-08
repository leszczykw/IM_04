#!/bin/bash

	clear
	echo "Podaj nazwisko, imie lub numer telefonu:"
	read i
	echo "Wyniki wuszkiawania wed³ug pozycji w kontaktach:"
	grep -ni $i dane.txt
	echo -e "\nPowrocic do menu (t/n)?"
	read p
	if [ "$p" = "t" ]
	then
	./ksiazka_tel.sh
	else
	echo -e "\nDziekuje za skorzystanie z moejgo programu"
	fi
