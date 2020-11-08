#!/bin/bash
	
	clear
	cat -n dane.txt
	echo -e "\nPodaj numer kontaktu, ktory chcesz usunac z kasiazki:"
	read n
	sed -i "$n"d dane.txt
	echo "Kontakt numer $n zostal usunienty z kontaktow"
	echo -e "\nPowrocic do menu (t/n)?"
	read p
	if [ "$p" = "t" ]
	then
	./ksiazka_tel.sh
	else
	echo -e "\nDziekuje za skorzystanie z moejgo programu"
	fi
