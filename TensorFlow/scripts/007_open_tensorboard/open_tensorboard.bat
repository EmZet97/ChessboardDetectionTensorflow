@ECHO OFF
ECHO Opening tensorboard
call activate tensorflow

tensorboard --logdir ../../workspace/detection_training/models/train

call conda deactivate
PAUSE