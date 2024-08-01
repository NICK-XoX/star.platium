from setuptools import setup
from Cython.Build import cythonize
import glob

# Find all .pyx files
pyx_files = glob.glob('./src/*.py', recursive=True)

setup(
    ext_modules = cythonize(pyx_files, language_level=3),
    zip_safe=False,
)