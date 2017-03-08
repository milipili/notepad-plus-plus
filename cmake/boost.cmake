# prepare boost:
# > bootstrap.bat
# > bcp regex yourfolder
# > remove tests, examples, build...

set(libboost_rootdir "${CMAKE_CURRENT_SOURCE_DIR}/my-little-boost")

include("${libboost_rootdir}/boost-import.cmake")

add_library(libboost STATIC ${libboost_srcs})

target_include_directories(libboost PUBLIC "${libboost_rootdir}")
