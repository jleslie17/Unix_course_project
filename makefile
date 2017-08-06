all: README.md


README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub \n" > README.md
	echo "Date and time of make run: \c" >> README.md
	date >> README.md
	echo "The number of lines in guessinggame.sh: \c" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
