#!/bin/bash
	
	clear
		sort -d -f dane.txt
		echo "Czy chcesz kontynuowac? (t/n)"
		read p
	if [ "$p" = "t" ]
	then
		./ksiazka_tel.sh
	else
		echo "Dziekuje za skorzystanie z moejgo programu"
	fi