README.md: guessinggame.sh
	touch README.md
	echo "Project:" > README.md
	echo "The Guessing Game" >> README.md
	echo "Date and Time:" >> README.md
	date >> README.md
	echo "Lines of Code:" >> README.md
	cat guessinggame.sh | grep '[^ ]' | wc -l >> README.md
