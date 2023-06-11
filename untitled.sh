#!/bin/bash
#!/usr/bin/python
#!/usr/bin/env python
#!/usr/bin/pwsh

EEN_VAR="hELLO worLD"
echo $EEN_VAR

echo 'echo "kijken of ie het doet $0, $1" ' > test.sh
chmod +x test.sh

./test.sh hij_doet_het #zonder spaties

for WORD in "dit is een loop wheee"
do
 echo "$WORD"
done

if [ "$1" == "hij_doet_het" ]; then
    echo "yup"
else 
    echo "shit broke"
fi