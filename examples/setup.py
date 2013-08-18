#
# Skeleton `setup.py` for cythonRmath.  Change the names and paths for
# your project/system and add anything else you need.
#

from distutils.core import setup
from Cython.Distutils import Extension
from Cython.Distutils import build_ext
import cython_rmath

ext = Extension("your_ext", ["your.pyx"],
                include_dirs = [path_to_Rmath/include, ...],
                library_dirs = [path_to_Rmath/lib, ...],
                libraries = ['Rmath', 'm', ...]
               )

setup(cmdclass = ['build_ext': build_ext},
      ext_modules = [ext])
