#Makefile to compile paper/presentation

#basename for the Paper
main1=PubAuthor20XX
#specify a supplement name
supp=${main1}_supp
#combined version
merge=${main}+SI
latcom=latexmk
latopt='-pdf'

all:  ${main1}.pdf # ${supp}.pdf ${main1}_diff.pdf ${supp}_diff.pdf ${merge}.pdf  #{merge}_diff.pdf 

#make rules

#build the main article
${main1}.pdf: ${main1}.tex
	${latcom} ${latopt} ${main1}.tex

#build the supplement 
${supp}.pdf: ${supp}.tex
	${latcom} ${latopt} ${supp}.tex

# rule to build 'diffed' versions of the main and supplement (e.g. after a revision)
diff:${main1}_diff.pdf #${supp}_diff.pdf


${main1}_diff.pdf: ${main1}.tex archive/${main1}.tex
	latexdiff archive/${main1}.tex ${main1}.tex > ${main1}_diff.tex
	${latcom} ${latopt} ${main1}_diff.tex

${supp}_diff.pdf: ${supp}.tex archive/${supp}.tex
	latexdiff archive/${supp}.tex ${supp}.tex > ${supp}_diff.tex
	${latcom} ${latopt} ${supp}_diff.tex	


#rule to concatenate the main and supplement into a merged pdf
${merge}.pdf:${main1}.pdf ${supp}.pdf
	pdftk ${main1}.pdf ${supp}.pdf cat output ${merge}.pdf

#rule to concatenate the diffed versions of the main and supplement into a merged pdf
${merge}_diff.pdf:${main1}_diff.pdf ${supp}_diff.pdf
	pdftk ${main1}_diff.pdf ${supp}_diff.pdf cat output ${merge}_diff.pdf

clean:
	rm -f *.bbl *.blg *.aux *.pdf  *.fls *.fdb_latexmk *.log
