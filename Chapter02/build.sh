#!/bin/bash

mkdir -p build
#clang++-11 -g -O3 -mavx2 -Wall -pedantic 01_substring_sort_a.C 01_substring_sort.C -lprofiler -o build/01_substring_sort
#CPUPROFILE=build/prof.data build/01_substring_sort
#google-pprof --text build/01_substring_sort build/01_substring_sort_prof.data

#clang++-11 -g -O3 -mavx2 -Wall -pedantic 03_substring_sort_a.C 03_substring_sort.C -lprofiler -o build/03_substring_sort
#CPUPROFILE=build/prof.data build/03_substring_sort
#google-pprof --text build/03_substring_sort build/03_substring_sort_prof.data

#clang++-11 -g -O3 -mavx2 -Wall -pedantic 04_substring_sort_a.C 04_substring_sort.C -lprofiler -o build/04_substring_sort
#CPUPROFILE=build/prof.data build/04_substring_sort
#google-pprof --text build/04_substring_sort build/prof.data

clang++-11 -g -O3 -mavx2 -Wall -pedantic 01_substring_sort_a.C 01_substring_sort.C -o build/01_substring_sort
#sudo perf stat build/01_substring_sort
sudo perf stat -e cycles,instructions,branches,branch-misses,cache-references,cache-misses build/01_substring_sort
