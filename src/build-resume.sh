#!/bin/bash

cd "$(dirname "$0")"

# pdf version
rm -r ../out
hackmyresume build resume.json to ../out/resume.all -t awesome
cd ../out/latex/examples
xelatex resume.tex
mv resume.pdf ../../../resume.pdf
cd ../../../src

# html version
rm -r ../out
hackmyresume build resume.json to ../index.html
