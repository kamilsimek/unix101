generate_readme:
	@echo "Project: Guessing Game \n" > README.md
	@echo `date` "\n" >> README.md
	@echo `cat guessinggame.sh | wc -l` "\n" >> README.md

