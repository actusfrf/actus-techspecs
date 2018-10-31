[![ACTUS](https://github.com/actusfrf/actus-resources/blob/master/logos/actus_logo.jpg "ACTUS Financial Research Foundation")](https://www.actusfrf.org)

ACTUS Technical Specification Document
=======

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

The ACTUS Technical Specification Document provides a formal specification of the ACTUS standard for the algorithmic representation of financial contracts.

It comes as a single ``latex`` file ``actus-techspecs.tex``. The latest release is generally available as a PDF at https://actusfrf.org/actus-techspecs.pdf.

The ACTUS Technical Specification Document is freely available and licensed under Creative Commons Attribution Share-Alike (CC-BY-SA) version 4.0.

## How to build

The ACTUS Technical Specification Document can be built as a PDF as follows:

```
git clone https://github.com/actusfrf/actus-techspecs.git
cd actus-techspecs
./build.sh
```
Building will create a (number of) config-file(s) used for compiling the ``latex`` file and a PDF version of the ACTUS Technical Specifications Document. Standard `pdflatex` tools like http://latex.informatik.uni-halle.de/latex-online/latex.php can be used for compiling/preview once the White Paper is built.
