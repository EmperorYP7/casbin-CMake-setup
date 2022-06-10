cmake_minimum_required(VERSION 3.20)

# Project details
project(
        CasbinClientTest
        VERSION 1.0
        DESCRIPTION "This project demonstrates the intended way to integrate casbin library"
        LANGUAGES CXX C
)

# Setting C++ Standard
set(CMAKE_CXX_STANDARD 17)

# Setting the path for CMake modules for this project
set(CMAKE_MODULE_PATH
        ${CMAKE_MODULE_PATH}
        ${CMAKE_SOURCE_DIR}/modules
        )

## Install dependencies
include(FindExtPackages)

set(MY_SOURCES src/main.cpp)
add_executable(CasbinClientTest ${MY_SOURCES})

# Link the executable against casbin
target_link_libraries(CasbinClientTest PRIVATE casbin nlohmann_json)

# Add casbin's include to our executable's include directory
set(MY_INCLUDE_DIR ${casbin_SOURCE_DIR}/include)
target_include_directories(CasbinClientTest PRIVATE ${MY_INCLUDE_DIR})
