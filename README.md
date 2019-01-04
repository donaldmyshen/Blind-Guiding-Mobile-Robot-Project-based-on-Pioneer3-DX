# Blind-Guiding-Mobile-Robot-Project-based-on-Pioneer3-DX
It's the senior design project I did in University of Detroit Mercy from 2017 to 2018, based on Pioneer3-DX robot platform with Kinect2, Hokuyo. 
This project conclude some open-spurce algorithm I found in github contains SLAM-gmapping, pocketsphinx and so on. Thanks for the providers!(I will try to find the source and add the link.) The robot contain basic mapping and navigation functions, with addtional model in simulation software, voice control and voie feedback, set tarket with coordinate and so on.
Finally, thanks for my teamates, Hao Lan, Yuchen Luo, Diwen Miao and Wuxin Shen. The memory with you I spent on this project is the best period of time of my undergraduate life.

I roughly upload the whole workspace and I think you will be clear with how it work if you are already familar with ROS. And if not, maybe it is a good idea for you to check the catkin_ws/src/hunter/lacunh first. And I will add more description in README later. I know it is not so clear, if youn need help ,feel free to contact with me,  my email is donaldmyshen@outlook.com!

You can go to catkin_ws/src/hunter/launch find most of the idea of my project.
------------------------------------------------------------------------------------------------------------------------------------------
Pacakge concluede:
  a. Basic requirement packages and nodes:
    1. ROS aria, is a interface to build the connection with the wheel of the robot. It's the most bisic node. http://wiki.ros.org/ROSARIA
    2. urg_node(with urg_c), the interface required for connecting the lidar, Hokuyo to your robot. When you finish downloading the urg_node and try to compile it, you may find that you still lack something and that's why you need urg_c. http://wiki.ros.org/urg_node http://wiki.ros.org/urg_c
    3.telelop twist keyboard, is a node that allow you use the keyboard to control the robot moving. It will need ROS aria node installed. It will be used when you hope to test the robot basical moving and mapping in the future. http://wiki.ros.org/teleop_twist_keyboard
    Additional 1: pioneer model: It's a node that add a pioneer3-dx robot model to RVIZ when your simulation. It will help a lot when you test and make the simulation more interesting. See my launch file in the hunter document.
   
   b. key packages: mapping and navigation 
    1. SLAM_Gmapping: most popular open source mapping package, there are a lot of source you can find on internet. 
    2. P3dx_navigation https://github.com/DavidHan008/p3dx_navigation
    3. Hunter_navigation_goals: Set the target by coordinate, you can change the frame to choose the local coordinate or global coordinate.
    
   c. Featured function:
     Waiting. 
