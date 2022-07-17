#!/bin/bash

roslaunch launch/camera_start.launch &

rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.036 right:=/stereo/right/image_raw left:=/stereo/left/image_raw /left_camera/set_camera_info:=/stereo/left/set_camera_info /right_camera/set_camera_info:=/stereo/right/set_camera_info --approximate=0.01 
