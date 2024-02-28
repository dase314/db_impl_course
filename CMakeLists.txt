cmake_minimum_required(VERSION 3.25)

# -- configure external project download -- #

include(FetchContent)

add_compile_options(-DEVENT__DISABLE_OPENSSL=ON)

FetchContent_Declare(
    event
    GIT_REPOSITORY  "https://github.com/libevent/libevent.git"
    GIT_TAG         "release-2.1.12-stable"
    EXCLUDE_FROM_ALL
    QUIET
)

FetchContent_Declare(
    jsoncpp
    GIT_REPOSITORY  "https://github.com/open-source-parsers/jsoncpp.git"
    GIT_TAG         "1.9.5"
    EXCLUDE_FROM_ALL
    QUIET
)

FetchContent_Declare(
    gtest
    GIT_REPOSITORY  "https://github.com/google/googletest"
    GIT_TAG         "v1.14.0"
    EXCLUDE_FROM_ALL
    QUIET
)

FetchContent_MakeAvailable(event jsoncpp gtest)

project(miniob LANGUAGES C CXX)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS true)

# -- find threads library -- #

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

# -- when debug is enabled -- #
if(DEBUG OR ENV{DEBUG})
    message(STATUS "**DEBUG**")
    add_compile_options(-Og -g -DDEBUG)
else()
    message(STATUS "**NOT DEBUG**")
    add_compile_options(-O2 -g)
endif()

# -- specify platform -- #
if(APPLE)
    message(STATUS "Platform: APPLE")
    add_definitions(-D__MACH__ )
elseif(UNIX)
    message(STATUS "Platform: UNIX")
    add_definitions(-DUNIX -DLINUX)
else()
    message(WARNING "Platform: Unsupported OS")
endif()

# -- configure common lib build command -- #
file(GLOB_RECURSE SRC common/*.cpp)
file(GLOB_RECURSE INC common/*.h)

foreach(F ${INC})
    file(RELATIVE_PATH REL ${CMAKE_CURRENT_SOURCE_DIR}/miniob-client ${F})
    configure_file(miniob-client/${REL} include/common/${REL} COPYONLY)
    unset(REL)
endforeach()

add_library(common STATIC ${SRC})
target_include_directories(common PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/include)

# -- configure server build command -- #

file(GLOB_RECURSE SRC miniob-server/*.cpp miniob-server/*.c)
file(GLOB_RECURSE INC miniob-server/*.h)

foreach(F ${INC})
    file(RELATIVE_PATH REL ${CMAKE_CURRENT_SOURCE_DIR}/miniob-server ${F})
    configure_file(miniob-server/${REL} miniob-server-headers/${REL} COPYONLY)
    unset(REL)
endforeach()

add_executable(miniob-server ${SRC})
target_link_libraries(miniob-server PUBLIC event jsoncpp_static dl Threads::Threads common)
target_include_directories(miniob-server PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/miniob-server-headers)

add_library(miniob-server-lib STATIC ${SRC}) # this library is created for unittests
target_link_libraries(miniob-server-lib PUBLIC event jsoncpp_static dl Threads::Threads common)
target_include_directories(miniob-server-lib PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/miniob-server-headers)

# -- configure client build command -- #

file(GLOB_RECURSE SRC miniob-client/*.cpp)

add_executable(miniob-client ${SRC})
target_link_libraries(miniob-client common Threads::Threads dl)


# -- configure test build command -- #
file(GLOB_RECURSE SRC tests/*.cpp)
foreach(F ${SRC})
    get_filename_component(X ${F} NAME_WE)
    message(STATUS "executable ${X}")
    add_executable(${X} ${F})
    target_link_libraries(${X} miniob-server-lib)
endforeach()

# -- configure unit-test build command -- #
enable_testing()
file(GLOB_RECURSE SRC unit-tests/*.cpp)
include(GoogleTest)
foreach(F ${SRC})
    get_filename_component(X ${F} NAME_WE)
    message(STATUS "executable ${X}")
    add_executable(${X} ${F})
    target_link_libraries(${X} Threads::Threads dl gtest gtest_main miniob-server-lib)
    add_test(SystemInformationNew ${X})
endforeach()
