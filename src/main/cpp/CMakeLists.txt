project(pdfium-bindings)
cmake_minimum_required(VERSION 3.18.1)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")

include_directories(include)
include_directories(include/cpp)
include_directories(include/utils)

add_library(pdfium-bindings SHARED mainJNILib.cpp util.hpp)

find_library(pdfium-bindings c++_shared)
find_library(pdfium-bindings android)
find_library(pdfium-bindings jnigraphics)
find_library(pdfium-bindings log)

add_library(libpdfium SHARED IMPORTED)
set_target_properties(libpdfium PROPERTIES IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/lib/${ANDROID_ABI}/libpdfium.so)

target_link_libraries(pdfium-bindings c++_shared android jnigraphics log libpdfium)

add_compile_definitions(HAVE_PTHREADS)
