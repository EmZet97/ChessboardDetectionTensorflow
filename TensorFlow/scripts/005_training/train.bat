@ECHO OFF
ECHO Activating virtual env
call activate tensorflow

set PIPELINE_CONFIG_PATH=../../workspace/detection_training/pre-trained-models/ssd_mobilenet_v2_fpnlite_320x320_coco17_tpu-8/pipeline.config
set MODEL_DIR= ../../workspace/detection_training/models/.
set NUM_TRAIN_STEPS= 5000

python ../../models/research/object_detection/model_main_tf2.py ^
  --model_dir %MODEL_DIR% ^
  --num_train_steps %NUM_TRAIN_STEPS% ^
  --pipeline_config_path %PIPELINE_CONFIG_PATH% ^
  --alsologtostderr


call conda deactivate
PAUSE