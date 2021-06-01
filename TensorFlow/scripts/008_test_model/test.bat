@ECHO OFF
ECHO Starting test
call activate tensorflow

python test_model.py

call conda deactivate
PAUSE