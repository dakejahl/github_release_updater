cmake_minimum_required(VERSION 3.1)

project(third_party)

include(cmake/build_target.cmake)

list(APPEND CMAKE_PREFIX_PATH "${DEPS_INSTALL_PATH}")
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} PARENT_SCOPE)

build_target(jsoncpp)
# build_target(tinyxml2)

# if(NOT IOS)
# build_target(zlib)
# endif()

# build_target(curl)

# if(${BUILD_BACKEND})
#     build_target(libressl)
#     build_target(cares)
#     build_target(protobuf)
#     build_target(absl)
#     build_target(grpc)
# endif()
