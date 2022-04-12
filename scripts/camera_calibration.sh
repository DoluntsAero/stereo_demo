#!/bin/bash

roslaunch launch/libvuc_camera.launch &

rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.036 right:=/stereo/right/image_raw left:=/stereo/left/image_raw left_camera:=/stereo/left right_camera:=/stereo/right --approximate=0.02
