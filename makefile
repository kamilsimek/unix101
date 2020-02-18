generate_readme:
	@echo "Project: Guessing Game" > README.md
	@echo `date` >> README.md
	@echo `cat guessinggame.sh | wc -l` >> README.md

