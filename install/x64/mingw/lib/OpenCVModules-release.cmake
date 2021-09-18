#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "opencv_world" for configuration "Release"
set_property(TARGET opencv_world APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_world PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/x64/mingw/lib/libopencv_world400.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/x64/mingw/bin/libopencv_world400.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_world )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_world "${_IMPORT_PREFIX}/x64/mingw/lib/libopencv_world400.dll.a" "${_IMPORT_PREFIX}/x64/mingw/bin/libopencv_world400.dll" )

# Import target "opencv_img_hash" for configuration "Release"
set_property(TARGET opencv_img_hash APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_img_hash PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/x64/mingw/lib/libopencv_img_hash400.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/x64/mingw/bin/libopencv_img_hash400.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_img_hash )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_img_hash "${_IMPORT_PREFIX}/x64/mingw/lib/libopencv_img_hash400.dll.a" "${_IMPORT_PREFIX}/x64/mingw/bin/libopencv_img_hash400.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
