find_program(VALADOC_EXECUTABLE
  NAMES valadoc
  DOC "Valadoc")

if(VALADOC_EXECUTABLE)
  execute_process(COMMAND ${VALADOC_EXECUTABLE} "--version" OUTPUT_VARIABLE VALADOC_VERSION OUTPUT_STRIP_TRAILING_WHITESPACE)
  string(SUBSTRING "${VALADOC_VERSION}" 8 -1 VALADOC_VERSION)
endif()

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Valadoc
  FOUND_VAR VALADOC_FOUND
  REQUIRED_VARS VALADOC_EXECUTABLE
  VERSION_VAR VALADOC_VERSION)
