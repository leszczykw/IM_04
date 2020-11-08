#!/bin/bash

kon="t"

while [ "$kon" = "t" ]
	do
	clear
		echo "Podaj nazwisko"
		read nazwisko
		echo "Podaj imie:"
		read imie
		echo "Podaj numer telefonu:"
		read numer

	echo "$nazwisko $imie $numer" >> dane.txt
	echo "Nastepujace dane zostaly zapisane: $nazwisko $imie $numer"
	echo "Czy chcesz kontynuowac? (t/n)"
	read kon
	done
	./ksiazka_tel.sh
	
