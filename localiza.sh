#!/bin/bash
find -maxdepth 1 -name "*.txt"
ls -F ./*.txt
find -maxdepth 1 -name "*.txt" | wc -l

