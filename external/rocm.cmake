cmake_minimum_required(VERSION 3.22.2)
set(CMAKE_HIP_STANDARD 17)
# set(CMAKE_HIP_EXTENSIONS OFF)
# set(CMAKE_HIP_STANDARD_REQUIRED ON)
# set(CMAKE_HIP_SEPARABLE_COMPILATION ON)
enable_language(HIP)

set(ROCM_FOUND TRUE)
set(TILEDARRAY_HAS_ROCM 1 CACHE BOOL "Whether TiledArray has ROCm support")

if(ENABLE_ROCM_ERROR_CHECK)
  set (TILEDARRAY_CHECK_ROCM_ERROR 1)
endif(ENABLE_ROCM_ERROR_CHECK)

find_package(hip REQUIRED)

# foreach (library cublas;nvToolsExt)
#   if (NOT TARGET CUDA::${library})
#     message(FATAL_ERROR "CUDA::${library} not found")
#   endif()
# endforeach()
# 
# if (NOT DEFINED CUDAToolkit_ROOT)
#   get_filename_component(CUDAToolkit_ROOT "${CUDAToolkit_INCLUDE_DIR}/../" ABSOLUTE CACHE)
# endif(NOT DEFINED CUDAToolkit_ROOT)
# 
# # sanitize implicit dirs if CUDA host compiler != C++ compiler
# message(STATUS "CMAKE Implicit Include Directories: ${CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES}")
# message(STATUS "CMAKE Implicit Link Directories: ${CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES}")
# include(SanitizeCUDAImplicitDirectories)
# sanitize_cuda_implicit_directories()
# message(STATUS "CMAKE Implicit Include Directories: ${CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES}")
# message(STATUS "CMAKE Implicit Link Directories: ${CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES}")

##
## Umpire
##
include(external/umpire.cmake)

##
## cuTT
##
include(external/cutt.cmake)
