
add_executable(01_substring_sort
    01_substring_sort.C
    01_substring_sort_a.C
    )

target_link_libraries(01_substring_sort benchmark::benchmark)
