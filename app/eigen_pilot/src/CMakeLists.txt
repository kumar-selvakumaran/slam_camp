cmake_minimum_required(VERSION 2.8)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "../bin")

project(Eigen_pilot)

include_directories("/usr/include/eigen3")

add_executable(eigen_demo_cmake eigen_playground.cpp)
