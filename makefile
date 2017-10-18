SHELL = bash
all: README.md

README.md: 
	@echo "Guessing number of Files in Directory." > README.md
	@echo Created on : `date` >> README.md
	@echo Number of Lines in guessinggame.sh : `wc -l < guessinggame.sh` >> README.md

clean:
	rm README.md
