







rm -rf build
rm *.c*
rm lol/*.c*
rm lol/defcon/*.c*
rm lol/bravo6/*.c*


# python setup.py build_ext --inplace


cd ./build/lib.*
rm nick.*
rm main.*
rm setup.*
rm onefile.*

rm lol/__init__.*
rm lol/defcon/__init__.*
rm lol/bravo6/__init__.*


cp ../../onefile.py ./
cp ../../main.py ./
cp ../../lol/__init__.py ./lol
cp ../../lol/defcon/__init__.py ./lol/defcon
cp ../../lol/bravo6/__init__.py ./lol/bravo6

py onefile.py

