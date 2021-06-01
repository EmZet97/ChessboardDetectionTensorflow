@ECHO OFF
ECHO Starting LabelImg

call activate tensorflow

pip install --upgrade pip
pip install tensorflow
start "" https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/tf2_detection_zoo.md

call conda deactivate
PAUSE