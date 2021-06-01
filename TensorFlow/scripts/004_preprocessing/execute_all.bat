@ECHO OFF

ECHO Create .csv file from images .xml labels
python generate_csv.py xml ../../workspace/detection_training/images/.  ../../workspace/detection_training/annotations/images.csv

ECHO Divide .csv file on train and test files
python generate_train_eval.py ../../workspace/detection_training/annotations/images.csv -f 0.8 -o ./

ECHO Generate labels .pbtxt file
python generate_pbtxt.py csv ../../workspace/detection_training/annotations/images.csv ../../workspace/detection_training/annotations/label_map.pbtxt

call activate tensorflow
python generate_tfrecord.py ../../workspace/detection_training/annotations/images_train.csv ../../workspace/detection_training/annotations/label_map.pbtxt ../../workspace/training_demo/images/ ../../workspace/training_demo/annotations/train.record
python generate_tfrecord.py ../../workspace/detection_training/annotations/images_eval.csv ../../workspace/detection_training/annotations/label_map.pbtxt ../../workspace/detection_training/images/ ../../workspace/detection_training/annotations/eval.record

ECHO Done
call conda deactivate
PAUSE