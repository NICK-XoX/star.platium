

source src/venv/bin/activate
pip install -r requirements.txt
rm -rf build
rm *cpython*
rm src/*.c
rm *.so
rm script.py
python setup.py build_ext --inplace
cp src/script.py ./