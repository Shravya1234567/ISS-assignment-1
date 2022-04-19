#!/bin/bash
grep . quotes.txt
echo -e '\n''\n'
awk '!seen[$0]++' quotes.txt