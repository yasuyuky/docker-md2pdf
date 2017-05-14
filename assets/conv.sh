#!/bin/bash

lang=${lang:=ja}
output=${output:=pdf}
opt=${opt:=--toc -N}
math=${math:=}
css=${css:=/assets/doc.css}
pandoc -t html5 $opt $math --css=$css -V lang=$lang ${1} -o ${1%.md}.${output}
