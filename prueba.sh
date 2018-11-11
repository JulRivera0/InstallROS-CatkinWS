#!/bin/sh
# Install the Manual Control support files
# This includes the code for the Arduino Car interface
# The packages needed for installing ROS on an Arduino

cd ~/catkin_ws
sudo apt-get install arduino
sudo apt-get install ros-indigo-joy -y
cd src
git clone https://github.com/JulRivera0/jetsoncar_teleop.git
cd ..
catkin_make

# Copy Arduino code 
cd ~/InstallManualControl
#cp -r Arduino\ Firmware/* '/home/ubuntu/sketchbook'
cp -r Arduino\ Firmware/* '/home/julrivera/sketchbook'
sudo apt-get install ros-indigo-rosserial-arduino ros-indigo-rosserial ros-indigo-angles -y
cd ~/sketchbook/libraries
rm -rf ros_lib
source ~/catkin_ws/devel/setup.bash
rosrun rosserial_arduino make_libraries.py ~/sketchbook/libraries
cd ~/InstallManualControl
