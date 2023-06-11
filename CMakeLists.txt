cmake_minimum_required(VERSION 3.12)
project(advent_of_code)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
get_property(all_targets GLOBAL PROPERTY TARGETS)

foreach(target ${all_targets})
    set_target_properties(${target} PROPERTIES LINKER_LANGUAGE CXX)
endforeach()


find_package(benchmark REQUIRED)

add_subdirectory(Chapter02)
add_subdirectory(Chapter03)
add_subdirectory(Chapter04)
add_subdirectory(Chapter05)
add_subdirectory(Chapter06)
add_subdirectory(Chapter07)
add_subdirectory(Chapter08)
add_subdirectory(Chapter09)
add_subdirectory(Chapter10)
add_subdirectory(Chapter11)
add_subdirectory(Chapter12)

