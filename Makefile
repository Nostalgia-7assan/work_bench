number_of_files=$(shell cat guessgame.sh | wc -l)

README.md :
	echo "Bash, Make, and Github" > README.md
	date >> README.md
	echo "Number of lines: ${number_of_files}" >> README.md

clean :
	rm README.md
