#!/usr/bin/env bash

##
## Usage: build.sh
##
## Note: no arguments to the build script currently in use
##


set -e

rm -rf build_options.tex

if [ -d ".git" ]; then

TAG=`git describe` || true
SHA=`git rev-parse --short --verify HEAD`
DATE=`git show -s --format="%cd" --date=short HEAD`
REV="$TAG-$SHA-$DATE"
echo "\def\VersionNumber{$REV}" >> build_options.tex

fi


if grep '=========' actus-techspecs.tex
then
  echo "merge conflict?"
  exit 1
fi

mkdir -p build
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error actus-techspecs.tex && \
bibtex build/actus-techspecs && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error actus-techspecs.tex && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error actus-techspecs.tex && \
pdflatex -output-directory=build -interaction=errorstopmode -halt-on-error actus-techspecs.tex && \
rm -rf build_options.tex
