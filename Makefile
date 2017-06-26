NAME     = yasc
TEX_DIR  = tex/

all: ${NAME}

${NAME}:
	pdflatex -interaction=nonstopmode ${TEX_DIR}/${NAME}.tex

clean:
	rm -f *.aux *.log *.toc

fclean: clean
	rm -f ${NAME}.pdf

re: fclean all
