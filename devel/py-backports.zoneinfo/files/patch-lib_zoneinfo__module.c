--- lib/zoneinfo_module.c.orig	2020-06-23 13:47:53 UTC
+++ lib/zoneinfo_module.c
@@ -594,11 +594,11 @@ zoneinfo_fromutc(PyObject *obj_self, PyObject *dt)
             PyObject *kwargs = PyDict_New();
             PyObject *one = NULL;
 
-#ifdef ATLEAST_37
+//#ifdef ATLEAST_37
             one = PyLong_FromLong(1);
-#else
-            one = _PyLong_One;
-#endif
+//#else
+//            one = _PyLong_One;
+//#endif
 
             Py_DECREF(tmp);
             if (args == NULL || kwargs == NULL || replace == NULL ||
@@ -617,7 +617,7 @@ zoneinfo_fromutc(PyObject *obj_self, PyObject *dt)
             Py_DECREF(args);
             Py_DECREF(kwargs);
             Py_DECREF(replace);
-#ifndef ATLEAST_37
+#ifdef ATLEAST_37
             Py_DECREF(one);
 #endif
 
