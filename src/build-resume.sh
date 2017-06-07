#!/bin/bash

cd "$(dirname "$0")"
build_dir="../out"

# pdf version
if [ -d "$build_dir" ]; then
    rm -r $build_dir
fi
hackmyresume build resume.json to ../out/resume.all -t awesome
cd ../out/latex/examples
xelatex resume.tex
mv resume.pdf ../../../resume.pdf
cd ../../../src

# html version
# rm -r $build_dir
hackmyresume build resume.json to ../index.html
