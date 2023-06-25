#!/bin/bash
#!/usr/bin/python
#!/usr/bin/env python
#!/usr/bin/pwsh

#if [ -d ./passworder ]; then
#    rm -rf ./passworder ./passworder_test
#    echo "deleted directories"
#fi

if [ -d ./passworder ]; then
    rm -rf ./passworder
    echo "deleted directory"
fi

if [ -d ./passworder_test ]; then
    rm -rf ./passworder_test
    echo "deleted directory"
fi

# if [ -d ./test/testt ]; then
#     rm -rf ./test/testt ./test
#     echo "deleted directory"
# fi

git clone git@github.com:Rac-Software-Development/operating-systems-2022-0974201.git ./passworder-test

cd ./passworder-test

pip install -r requirements.txt --upgrade


if [ python3 -m unittest discover -ne 1 ]; then
    echo "rip"
fi

git describe -tags > version.txt

mv passworder_test passworder

cd ./passworder

python3 main.py
