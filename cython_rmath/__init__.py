#    CythonRMath provides a set of Cython declarations for the R Math Library.
#    Copyright (C) 2013 Nicholas J. Foti
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.


def get_include():
    import os
    import sys

    if sys.platform == "win32":
        pass
    elif sys.platform == "linux":
        # Check R_HOME, then /usr/local/include, /usr/include
        pass
    elif sys.platform == "darwin":
        # Check R_HOME, then /Library/Frameworks/R.Framework/Headers, and
        # /usr/local/include
        try:
            rmath_include = os.environ["R_HOME"] + '/include'
        except KeyError:
            rmath_include = "/Library/Frameworks/R.Framework/Headers"
            if not os.path.isdir(rmath_include):
                rmath_include = "/usr/local/include"
                if not os.path.isfile(rmath_include + '/Rmath.h'):
                    rmath_include = ''

        err_str = "Could not find RMath headers.  \
                   Use R_HOME to specify location."
        assert rmath_include != '', err_str

    return rmath_include


def get_library_dir():
    import os
    import sys

    if sys.platform == "win32":
        pass
    elif sys.platform == "linux":
        # Check R_HOME, then /usr/local/lib, /usr/lib
        pass
    elif sys.platform == "darwin":
        # Check R_HOME, then /Library/Frameworks/R.Framework/Libraries, and
        # /usr/local/lib
        try:
            rmath_lib = os.environ["R_HOME"] + '/lib'
        except KeyError:
            rmath_lib = "/Library/Frameworks/R.Framework/Libraries"
            if not os.path.isdir(rmath_lib):
                rmath_include = "/usr/local/lib"
                if not os.path.isfile(rmath_lib + '/libR.dylib'):
                    rmath_lib = ''

        err_str = "Could not find RMath library directory.  \
                   Use R_HOME to specify location."
        assert rmath_lib != '', err_str

    return rmath_lib


def get_libraries():
    return ['R', 'Rblas', 'Rlapack']


def get_cython_include_dir():
    import cython_rmath, os.path
    return os.path.split(cython_rmath.__path__[0])[0]
