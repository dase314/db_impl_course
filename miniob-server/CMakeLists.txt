cmake_minimum_required(VERSION 3.22)

include(FetchContent)

FetchContent_Declare(
    event
    GIT_REPOSITORY  "https://github.com/libevent/libevent.git"
    GIT_TAG         "release-2.1.12-stable"
)

FetchContent_Declare(
    jsoncpp
    GIT_REPOSITORY  "https://github.com/open-source-parsers/jsoncpp.git"
    GIT_TAG         "1.9.5"
)

FetchContent_Declare(
    common
    GIT_REPOSITORY  "https://github.com/Y-jiji/mini-ob-common.git"
    GIT_TAG         "main"
)

FetchContent_MakeAvailable(common event jsoncpp)

project(miniob-server LANGUAGES C CXX)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

include_directories(.)

file(GLOB_RECURSE SRC src/*.cpp src/*.c)
file(GLOB_RECURSE INC src/*.h)

# -- copy src/*.h to ${CMAKE_BINARY_DIR}/include
foreach(F ${INC})
    file(RELATIVE_PATH REL ${CMAKE_CURRENT_SOURCE_DIR}/src ${F})
    configure_file(src/${REL} include/${REL} COPYONLY)
    unset(REL)
endforeach()

add_executable(miniob-server ${SRC})
target_link_libraries(miniob-server PUBLIC event jsoncpp_static dl Threads::Threads common)
target_include_directories(miniob-server PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/include)
