cmake_minimum_required(VERSION 3.0)
project(cero_server)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
include (cmake/utils.cmake)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O3 -fPIC -ggdb -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function -Wno-builtin-macro-redefined -Wno-deprecated-declarations -Wno-unused-result")
set(CMAKE_C_FLAGS "$ENV{CXXFLAGS} -rdynamic -O3 -fPIC -ggdb -std=c11 -Wall -Wno-deprecated -Werror -Wno-unused-function -Wno-builtin-macro-redefined -Wno-deprecated-declarations -Wno-unused-result")

include_directories(.)
include_directories(/usr/include)

link_directories(/usr/lib)
link_directories(/usr/lib64)

option(BUILD_TEST "ON for complile test" OFF)

find_package(Boost REQUIRED)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
endif()
find_package(OpenSSL REQUIRED)
if(OPENSSL_FOUND)
    include_directories(${OPENSSL_INCLUDE_DIR})
endif()

set(LIB_SRC
    log/log.cpp 
    config/config.cpp 
    config/env.cpp 
    utils/util.cpp 

    ceros/thread.cpp 
    ceros/fiber.cpp 
    ceros/mutex.cpp 
    ceros/scheduler.cpp 
    
    utils/util/crypto_util.cpp
)

add_library(cero_server SHARED ${LIB_SRC})
force_redefine_file_macro_for_sources(cero_server)


set(LIBS
        cero_server
        ${OPENSSL_LIBRARIES}
        yaml-cpp
        jsoncpp
        event
        stdc++fs  # 添加此行以链接 std::experimental::filesystem
)




## 输出 和 lib打包
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)



##  测试test-build
if(BUILD_TEST)
cero_add_executable(test_log "tests/test_log.cpp" cero_server "${LIBS}")

elseif(

)
endif()




cero_add_executable(test_crypto "tests/test_crypher.cpp" cero_server "${LIBS}")

