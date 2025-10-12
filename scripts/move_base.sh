#!/bin/bash
# 脚本名称: 
# 脚本描述: 

gnome-terminal --window --title="sim" -e  'bash -c " sleep 1;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;
                    roslaunch unitree_guide sim.launch;
                    exec bash"' \
--tab --title="joystick_node" -e 'bash -c " sleep 6;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch joystick_node joystick_node.launch;
                    exec bash"' \
--tab --title="SLAM" -e 'bash -c " sleep 12;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch unitree_guide slam.launch;
                    exec bash"' \
--tab --title="move_base" -e 'bash -c " sleep 13;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch unitree_move_base rvizMoveBase.launch;
                    exec bash"' \
--tab --title="TFPub" -e 'bash -c " sleep 13;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;  
                    roslaunch unitree_guide tf_pub.launch;
                    exec bash"' \
