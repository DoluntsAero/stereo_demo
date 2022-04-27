#!/bin/bash

rm -rf ~/.ros/camera_info/
mkdir ~/.ros/camera_info/
cp include/left_camera.yaml ~/.ros/camera_info/
cp include/right_camera.yaml ~/.ros/camera_info/