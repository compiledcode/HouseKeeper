cmake_minimum_required(VERSION 3.15)
project(embedpy)

find_package(pybind11 REQUIRED)  # or `add_subdirectory(pybind11)`

set(CMAKE_CXX_STANDARD 14)

include_directories(/usr/local/include/pybind11/) # /Library/Frameworks/Python.framework/Versions/3.7/include/python3.7m/
link_directories(/Library/Frameworks/Python.framework/Versions/3.7/lib/)
add_executable(embedpy main.cpp)
target_link_libraries(embedpy PRIVATE pybind11::embed)

#link_libraries(python3.7m pybind11::embed)
#link_libraries(python3.7m PRIVATE pybind11::embed)
