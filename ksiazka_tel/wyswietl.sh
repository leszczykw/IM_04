#!/bin/bash

	clear
		cat -n dane.txt
		echo -e "\n\nCzy chcesz kontynuowac? (t/n)"
		read p
		if [ "$p" = "t" ]
		then
		./ksiazka_tel.sh
		else
		echo "Dziekuje za skorzystanie z moejgo programu"
		fi
