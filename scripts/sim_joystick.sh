#!/bin/bash
# 脚本名称:
# 脚本描述:

gnome-terminal --window --title="Simulation" -e  'bash -c " sleep 1;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;
                    roslaunch unitree_guide sim.launch;
                    exec bash"' \
--tab --title="Control" -e 'bash -c " sleep 1;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;
                    roslaunch unitree_guide control.launch;
                    exec bash"' \
--tab --title="Robot Input Node" -e 'bash -c " sleep 0;
                    source ~/Documents/legged_localization_benchmark/scripts/environment_setup.sh;
                    roslaunch unitree_guide input.launch input_method:=joystick;
                    exec bash"'
