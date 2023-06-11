#!/bin/bash
#!/usr/bin/python
#!/usr/bin/env python
#!/usr/bin/pwsh

EEN_VAR="hELLO worLD"
echo $EEN_VAR

echo "test " ${EEN_VAR} > test.txt

echo "new line" >> test.txt
echo "new new line" >> test.txt