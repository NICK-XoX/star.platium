

# source src/venv/bin/activate
# pip install -r src/requirements.txt
rm -rf build
rm *cpython*
rm src/*.c
rm *.so
rm script.py
python setup.py build_ext --inplace
cp src/script.py ./
# pyarmor gen --pack FC -r script.py
# pyarmor gen --pack FC -r script.py --include-requirements=requirements.txt
# pyarmor gen --pack FC -r script.py --runtime-dir requirements.txt

py onefile.py
