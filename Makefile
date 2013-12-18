all: security.pdf

security.pdf: security.mdwn pandoc.template Makefile
	pandoc $< -o $@ --template pandoc.template

clean:
	rm -f *.aux *.log texput.pdf security.tex security.pdf
