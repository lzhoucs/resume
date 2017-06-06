rm -r out
hackmyresume build resume\ -\ Liang\ Zhou.json -t awesome
cd out/latex/examples
xelatex resume.tex
