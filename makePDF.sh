#!/bin/bash

# Requires pandoc (http://pandoc.org)
# To install use any of:
#
#   Any platform with Haskell installed:
#     cabal install pandoc
#
#   Ubuntu:
#     sudo apt-get install pandoc
#
#   Mac:
#     brew install pandoc

# Holy sub-shell Batman!
(
cat << EOF
---
title:     Machine Learning MU 2015
author:
  - Barak A. Pearlmutter
  - Machine Learning - Class of 2016
toc:       yes
geometry:  margin=3cm
---

EOF

for i in $(ls -1 lecture-*); do
  echo -e "\n\pagebreak\n"
  echo -e "# ${i//\.md/}\n" | sed 's/l/L/' | sed 's/-/ /'
  cat $i | sed 's/\(#\+\)/#\1/' | sed 's/===\+/---/g'
done
) | pandoc -o Lectures.pdf --latex-engine=xelatex
