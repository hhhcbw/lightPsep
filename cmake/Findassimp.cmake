IF (WIN32)
	set (ASSIMP_INCLUDE_SEARCH_PATHS "D://tools//Assimp//include")
	set (ASSIMP_LIBRARY_SEARCH_PATHS "D://tools//Assimp//lib//x64" "D://tools//Assimp//bin//x64")

	find_path(ASSIMP_INCLUDE_DIRS NAMES assimp/scene.h PATHS ${ASSIMP_INCLUDE_SEARCH_PATHS})
	message(STATUS "ASSIMP_INCLUDE_DIRS: ${ASSIMP_INCLUDE_DIRS}")
	find_library(ASSIMP_LIBRARIES NAMES assimp-vc143-mt PATHS ${ASSIMP_LIBRARY_SEARCH_PATHS})
	message(STATUS "ASSIMP_LIBRARIES: ${ASSIMP_LIBRARIES}")
ELSE (WIN32)
	message(FATAL_ERROR "Build only support in win32/64")
ENDIF (WIN32)