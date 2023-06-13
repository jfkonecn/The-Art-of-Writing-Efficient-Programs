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

#clang++-11 -g -O3 -mavx2 -Wall -pedantic 01_substring_sort_a.C 01_substring_sort.C -o build/01_substring_sort
#sudo perf stat build/01_substring_sort
#sudo perf stat -e cycles,instructions,branches,branch-misses,cache-references,cache-misses build/01_substring_sort

#clang++-11 -g -O3 -mavx2 -Wall -pedantic 01_substring_sort_a.C 01_substring_sort.C -o build/01_substring_sort
#sudo perf record  -o build/perf.data build/01_substring_sort

#clang++-11 -g -O3 -mavx2 -Wall -pedantic 01_substring_sort_a.C 01_substring_sort.C -lprofiler -o build/01_substring_sort
#CPUPROFILE=build/prof.data build/01_substring_sort
# interactive mode
#google-pprof build/01_substring_sort build/prof.data

#clang++-11 -g -O3 -mavx2 -Wall -pedantic 05_compare_timer.C -lprofiler -o build/05_compare_timer
##CPUPROFILE=build/prof.data CPUPROFILE_FREQUENCY=1000 build/05_compare_timer
#CPUPROFILE=build/prof.data CPUPROFILE_FREQUENCY=1000 build/05_compare_timer
#google-pprof --pdf build/05_compare_timer build/prof.data > build/prof.pdf

#clang++-11 -g -O3 -mavx2 -Wall -pedantic -lprofiler 05a_compare_timer.C -o build/05a_compare_timer
#CPUPROFILE=build/prof.data CPUPROFILE_FREQUENCY=1000 build/05a_compare_timer
#google-pprof --pdf build/05a_compare_timer build/prof.data > build/prof.pdf

#clang++-11 -g -O3 -mavx2 -Wall -pedantic -lprofiler 09_compare_timer.C -o build/09_compare_timer
#CPUPROFILE=build/prof.data CPUPROFILE_FREQUENCY=1000 build/09_compare_timer
#google-pprof --pdf build/09_compare_timer build/prof.data > build/prof.pdf

GBENCH_DIR=/usr/local
clang++-11 -g -O3 -mavx2 -Wall -pedantic -I$GBENCH_DIR/include \
    11_compare_mbm.C 11_compare_mbm_a.C 11_compare_mbm_b.C 11_compare_mbm_c.C \
    $GBENCH_DIR/lib/libbenchmark.a -pthread -lrt -lm \
    -o build/11_compare_mbm
#build/11_compare_mbm --benchmark_format=csv > build/11_compare_mbm.csv
build/11_compare_mbm --benchmark_format=csv > build/11_compare_mbm.csv
