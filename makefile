all: README.md

README.md:
	touch README.md
	echo "# Guessing game programm" > README.md
	echo "Last make was run on `date +%Y-%m-%d` at `date +%H:%M`" >> README.md
	echo "guessinggame.sh has `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines of code" >> README.md