########### 设置版本
cmake_minimum_required(VERSION 3.20)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Release)
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")

########### 设置项目名称
project(opencv_contrib_demo)

########### 添加库
# opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

########### 编译可执行文件
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})
