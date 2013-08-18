cythonRMath
===========

Cython wrapper of the RMath library (based on cythonGSL).

TODO
----

* See if `nogil` should be added

Dependencies
------------

The Rmath library must be built and `libRmath.so` (`libRmath.dylib` on OSX)
must be in a standard directory (e.g. `/usr/local/lib`), or in a directory on
`LD_LIBRARY_PATH` (`DYLD_LIBRARY_PATH` on OSX), or in the same directory as
your project.  Installing R will not suffice (at least on OSX).  You need to
build `libRmath.{so|dylib}` for standalone use.

First get a copy of Rmath (e.g. `https://github.com/JuliaLang/Rmath`) and build
it.  Then copy the resulting `.so` (or `.dylib` on OSX) to either a standard
place that your system searches to dynamically link libraries, or add the
directory containing `libRmath.{so|dylib}` to `{DY}LD_LIBRARY_PATH`, or a cheap
solution is to just copy `libRmath.{so|dylib}` to the directory where you will
build your cython code.

Installation:
=============

Run `python setup.py install`.

Usage
-----

There will be a demo at some point.

**Make sure `cythonRmath` is on your `PYTHONPATH`**

**Import cythonRmath into your cython code**

In the cython file from which you want to call Rmath functions, import the
library:

``` python
    from cython_rmath cimport *
```

You should be able to call Rmath functions from here on out.

**Compile your module**

Your `setup.py` should look like (see `examples/setup.py`):

``` python
    from distutils.core import setup
    from Cython.Distutils import Extension
    from Cython.Distutils import build_ext
    import cython_rmath

    ext = Extension("your_ext",
                    ["your.pyx"],
                    define_macros=[('MATHLIB_STANDALONE', '1')],
                    include_dirs = [path_to_Rmath/include, ...],
                    library_dirs = [path_to_Rmath/lib, ...],
                    libraries = ['Rmath', 'm', ...]
                   )

    setup(cmdclass = ['build_ext': build_ext},
          ext_modules = [ext])
```

Note: The `libRmath.{so|dylib}` may not be in the `lib` directory (if you use
the repository above it will be in the `src` directory).
