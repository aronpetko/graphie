cmake_minimum_required(VERSION 3.17)
project(graphie)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS_RELEASE "/MT /GR-")
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)

# disable RTTI
string(REPLACE "/GR" "/GR-" CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})

# disable exceptions
string(REPLACE "/EHsc" "/EHsc-" CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})

# disable exceptions
add_definitions(-D_HAS_EXCEPTIONS=0 -D_STATIC_CPPLIB -DWIN32_LEAN_AND_MEAN)

link_directories($ENV{NATIVE_LIBS}/sfml/lib/)

file(GLOB_RECURSE SRCS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ../graphie/*.cpp ../graphie/*.h ../graphie/*.c ../graphie/*.h ../graphie/*.asm)
string(REGEX REPLACE "cmake-build-release/[^;]+;?" "" SRCS "${SRCS}")
string(REGEX REPLACE "cmake-build-debug/[^;]+;?" "" SRCS "${SRCS}")

add_executable(graphie ${SRCS} render/shapes/line.cpp render/shapes/line.h render/render.h render/shapes/rectangle.cpp render/shapes/rectangle.h render/shapes/point.cpp render/shapes/point.h graph/graph.cpp graph/graph.h math/math.h tinyexpr/tinyexpr.c tinyexpr/tinyexpr.h)

target_include_directories(graphie PRIVATE $ENV{NATIVE_LIBS}/sfml/include/)

# statically link msvc
set_property(TARGET graphie PROPERTY MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Release>:>")

target_link_libraries(graphie opengl32 ws2_32 glu32 sfml-graphics sfml-window sfml-system)