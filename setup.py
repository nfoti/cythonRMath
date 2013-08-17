#!/usr/bin/env python
from distutils.core import setup
from Cython.Distutils import Extension
from Cython.Distutils import build_ext

setup(
    name="cythonRmath",
    version="0.0.1",
    author="Nicholas J. Foti",
    author_email="nfoti01@gmail.com",
    url="http://github.com/nfoti/cythonRmath",
    packages=["cython_rmath"],
    package_data={"cython_rmath": ["*.pxd"]},
    description="""Cython declarations for the Rmath Library.""",
    setup_requires=['Cython >= 0.16'],
    install_requires=['Cython >= 0.16'],
    classifiers=[
                'Development Status :: 4 - Beta',
                'Environment :: Console',
                'Operating System :: OS Independent',
                'Intended Audience :: Science/Research',
                'License :: OSI Approved :: GNU General Public License (GPL)',
                'Programming Language :: Python',
                'Topic :: Scientific/Engineering']
)
