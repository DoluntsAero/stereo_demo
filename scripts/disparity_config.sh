#!/bin/bash

roslaunch launch/camera_start.launch &

rosrun stereo_image_proc stereo_image_proc __ns:=stereo _approximate_sync:=True &

rosrun image_view stereo_view stereo:=/stereo image:=image_rect_color _approximate_sync:=True &

rosrun rqt_reconfigure rqt_reconfigure
