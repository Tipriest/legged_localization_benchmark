#!/bin/bash
# 脚本名称: 
# 脚本描述: 

gnome-terminal --window --title="Simulation" -e  'bash -c " sleep 1;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;
                    roslaunch unitree_guide sim.launch;
                    exec bash"' \
--tab --title="Joystick Node" -e 'bash -c " sleep 6;  
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch joystick_node joystick_node.launch;
                    exec bash"' \
--tab --title="SLAM" -e 'bash -c " sleep 12;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch unitree_guide slam.launch;
                    exec bash"' \
--tab --title="TFPub" -e 'bash -c " sleep 13;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch unitree_guide tf_pub.launch;
                    exec bash"' \
