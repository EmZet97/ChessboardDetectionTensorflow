@ECHO OFF
ECHO Starting detector
call activate tensorflow

python main.py

call conda deactivate
PAUSE