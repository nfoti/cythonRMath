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


# This stuff won't really work anymore b/c will have to build Rmath manually
# and then link to it.
def get_include():
    print "You built Rmath, you tell the compiler where the headers are!"
    print "In setup.py edit the `include_dirs` list to contain the path to ",
    print "the headers, e.g. 'path/to/Rmath/include'."

def get_libraries():
    print "You built Rmath, you tell the compiler where the libraries are!"
    print "In setup.py edit the `library_dirs` list to contain the path to ",
    print "the library, e.g. 'path/to/Rmath/lib'."


def get_cython_include_dir():
    import cython_rmath
    import os.path
    return os.path.split(cython_rmath.__path__[0])[0]
