#!/bin/bash
# 脚本名称: takeoff_land
# 脚本描述: 该脚本为起飞&降落控制demo启动脚本,包含PX4 SITL,Gazebo仿真环境,无人机控制节点以及起飞&降落控制节点

gnome-terminal --window --title="Simulation" -e  'bash -c " sleep 1;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;
                    roslaunch unitree_guide sim.launch;
                    exec bash"' \
--tab --title="Joystick Node" -e 'bash -c " sleep 6;  
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch joystick_node joystick_node.launch;
                    exec bash"' \
--tab --title="SLAM" -e 'bash -c " sleep 6;  
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch unitree_guide slam.launch;
                    exec bash"' \
