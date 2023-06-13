
add_executable(01_substring_sort
    01_substring_sort.C
    01_substring_sort_a.C
    )

target_link_libraries(01_substring_sort)

add_executable(11_compare_mbm
    11_compare_mbm.C
    11_compare_mbm_a.C
    11_compare_mbm_b.C
    11_compare_mbm_c.C
    )
target_link_libraries(11_compare_mbm benchmark::benchmark)
