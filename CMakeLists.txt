cmake_minimum_required(VERSION 3.14)

project(main
    DESCRIPTION "Test clang test coverage error with sccache"
    LANGUAGES CXX
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage")

add_executable(main
    main.cpp
)

target_precompile_headers(main PRIVATE
    "$<$<COMPILE_LANGUAGE:CXX>:<iostream$<ANGLE-R>>"
)

target_link_libraries(main PRIVATE stdc++)
