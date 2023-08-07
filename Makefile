all: clean cv 

cv:
	rm -rf ./staging
	rm -rf ./build
	rm -f ./cv.pdf
	rm -f embed-cv.html
	rm -f cv.html
	mkdir -p ./staging
	mkdir -p ./build
	latexmk -xelatex -shell-escape -output-directory ./staging cv.tex \
		|| xelatex --shell-escape -output-directory ./staging cv.tex
	mv ./staging/cv.pdf ./build/cv.pdf
	PDF='cv.pdf' j2 templates/index.html.j2 > ./build/cv.html
	PDF='cv.pdf' j2 templates/embed.html.j2 > ./build/embed-cv.html

open:
	@if [ -f "./build/cv.pdf" ]; then\
		xdg-open ./build/cv.pdf || open ./build/cv.pdf || explorer.exe ./build/cv.pdf;\
	fi

clean:
	@rm -rf ./staging
	@rm -rf ./build