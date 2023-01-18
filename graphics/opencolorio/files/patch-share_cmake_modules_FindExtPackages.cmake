--- share/cmake/modules/FindExtPackages.cmake.orig	2022-06-02 00:35:53 UTC
+++ share/cmake/modules/FindExtPackages.cmake
@@ -94,7 +94,7 @@ if(OCIO_BUILD_PYTHON OR OCIO_BUILD_DOCS)
     endif()
 
     # Python
-    find_package(Python ${OCIO_PYTHON_VERSION} REQUIRED
+    find_package(Python ${OCIO_PYTHON_VERSION} EXACT
                  COMPONENTS ${_Python_COMPONENTS})
 
     if(OCIO_BUILD_PYTHON)
