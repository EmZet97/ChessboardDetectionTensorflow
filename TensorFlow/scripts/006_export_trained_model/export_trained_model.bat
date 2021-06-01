@ECHO OFF
ECHO Activating virtual env
call activate tensorflow

set PIPELINE_CONFIG_PATH=../../workspace/detection_training/pre-trained-models/ssd_mobilenet_v2_fpnlite_320x320_coco17_tpu-8/pipeline.config
set MODEL_DIR= ../../workspace/detection_training/models/.
set OUTPUT_DIR= ../../workspace/detection_training/exported-models/.

python ../../models/research/object_detection/exporter_main_v2.py ^
    --trained_checkpoint_dir %MODEL_DIR% ^
    --pipeline_config_path %PIPELINE_CONFIG_PATH% ^
    --output_directory %OUTPUT_DIR%

call conda deactivate
PAUSE