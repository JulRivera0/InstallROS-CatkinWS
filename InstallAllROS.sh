# update repositores
sudo apt-add-repository universe
sudo apt-add-repository multiverse
sudo apt-add-repository restricted
sudo apt-get update
sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

###########################################  Install ROS TK1  ##################################################
#sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
#wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
#sudo apt-get update
#sudo apt-get install ros-indigo-ros-base
#sudo apt-get install python-rosdep
#sudo rosdep init
#rosdep update
#echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
#source ~/.bashrc
#sudo apt-get install python-rosinstall


###########################################  Install ROS LAP  ##################################################
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosinstall
