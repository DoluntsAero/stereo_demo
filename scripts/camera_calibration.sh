#!/bin/bash

roslaunch launch/libvuc_camera.launch &

rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.036 right:=/stereo/right/image_raw left:=/stereo/left/image_raw left_camera:=/stereo/left right_camera:=/stereo/right --approximate=0.01

rosrun stereo_image_proc stereo_image_proc /left/image_raw:=/camera/fisheye1/image_raw /left/camera_info:=/camera/fisheye1/camera_info /right/image_raw:=/camera/fisheye2/image_raw /right/camera_info:=/camera/fisheye2/camera_info