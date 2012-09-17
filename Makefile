%.html: %.md style.css Makefile
	    pandoc -c style.css -s -f markdown -t html --standalone -o build/$@ $<

%.odt: %.md Makefile
	    pandoc --standalone -f markdown -t odt -o build/$@ $<

%.pdf: %.md %.odt
	    markdown2pdf -f markdown -o build/$@ $<

all: resume.html resume.odt resume.pdf
