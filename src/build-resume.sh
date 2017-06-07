rm -r ../out
hackmyresume build resume.json to ../out/resume.all -t awesome
cd ../out/latex/examples
xelatex resume.tex
mv resume.pdf ../../../resume.pdf
