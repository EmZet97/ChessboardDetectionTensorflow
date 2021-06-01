@ECHO OFF
ECHO Starting LabelImg

call activate tensorflow
ECHO Starting app
labelimg
call conda deactivate
PAUSE