

source src/venv/bin/activate
pip install -r src/requirements.txt
rm -rf build
rm *cpython*
rm src/*.c
rm *.so
rm script.py
python setup.py build_ext --inplace
cp src/script.py ./
