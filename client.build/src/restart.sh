



rm -rf build
rm *.c*
rm lol/*.c*
rm lol/defcon/*.c*
rm lol/bravo6/*.c*


python setup.py build_ext --inplace




cd ./build/lib.*
rm nick.*
rm star.*
rm setup.*
rm onefile.*

rm lol/__init__.*



cp ../../onefile.py ./
cp ../../star.py ./
cp ../../requirements.txt ./requirements.txt
cp ../../lol/__init__.py ./lol


python onefile.py

