cythonRMath
===========

Cython wrapper of the RMath library (based on cythonGSL).

It is a work in progress and will at first only be developed for OS X,
but please contribute so that it works on Linux and Windows as well.

Dependencies
------------

- R must be installed on the system.  If the `libRmath.{so|dylib}` is not in a 
  standard place the environment variable `R_HOME` may be used to specify the location.
