Add PATH_SUFFIXES to properly find the QtAV library.

--- core/cmake/modules/FindQtAV.cmake.orig	2022-06-22 11:35:53 UTC
+++ core/cmake/modules/FindQtAV.cmake
@@ -53,6 +53,7 @@ if (NOT APPLE)
                        libQtAV
                        libQtAV1
                  HINTS ${_qt5_install_prefix}/../
+                 PATH_SUFFIXES qt5
     )
 
     find_library(QTAV_WIDGETS_LIBRARY
@@ -61,6 +62,7 @@ if (NOT APPLE)
                        libQtAVWidgets
                        libQtAVWidgets1
                  HINTS ${_qt5_install_prefix}/../
+                 PATH_SUFFIXES qt5
     )
 
     set(QTAV_INCLUDE_DIRS "${QTAV_CORE_INCLUDE_DIR} ${QTAV_WIDGETS_INCLUDE_DIR}")
