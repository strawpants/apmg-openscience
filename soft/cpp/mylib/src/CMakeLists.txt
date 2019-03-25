project(mycpptools)

#instruct cmake on how to build the library
add_library(mylib SHARED src/lib/function.cpp src/lib/function.hpp)

#instruct cmake on how to build and executable 
add_executable(myprogram prog/myprogram.cpp )
target_include_directories(myprogram PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(myprogram mylib)
