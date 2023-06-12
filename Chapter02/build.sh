#!/bin/bash

mkdir -p build
clang++-11 -g -O3 -mavx2 -Wall -pedantic 01_substring_sort_a.C 01_substring_sort.C -lprofiler -o build/01_substring_sort
CPUPROFILE=build/prof.data build/01_substring_sort
google-pprof --text build/01_substring_sort build/prof.data > build/01_substring_sort.txt
