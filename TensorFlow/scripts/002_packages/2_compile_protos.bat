@ECHO OFF
ECHO Starting

call activate tensorflow

cd ../../models/research
ECHO Moved to %CD%
PAUSE

ECHO Compile proto files
protoc object_detection/protos/*.proto --python_out=.
PAUSE

ECHO Move setup.py file
copy ".\object_detection\packages\tf2\setup.py" ".\setup.py"
PAUSE

python -m pip install --use-feature=2020-resolver .

PAUSE