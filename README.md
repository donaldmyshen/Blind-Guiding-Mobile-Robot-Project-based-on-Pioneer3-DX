# Blind-Guiding-Mobile-Robot-Project-based-on-Pioneer3-DX
It's the research project I did in University of Detroit Mercy from 2017 to 2018, based on Pioneer3-DX robot platform with Kinect2, Hokuyo. 
This project conclude some open-spurce algorithm I found in github contains SLAM-gmapping, pocketsphinx and so on. Thanks for the providers!(I will try to find the source and add the link.) The robot contain basic mapping and navigation functions, with addtional model in simulation software, voice control and voie feedback, set tarket with coordinate and so on.
Finally, thanks for my teamates, Hao Lan, Yuchen Luo, Diwen Miao and Wuxin Shen. The memory with you I spent on this project is the best period of time of my undergraduate life.

I roughly upload the whole workspace and I think you will be clear with how it work if you are already familar with ROS. And if not, maybe it is a good idea for you to check the catkin_ws/src/hunter/lacunh first. And I will add more description in README later. I know it is not so clear, if youn need help ,feel free to contact with me,  my email is donaldmyshen@outlook.com!

You can go to catkin_ws/src/hunter/launch find most of the idea of my project.
------------------------------------------------------------------------------------------------------------------------------
 
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
     1. Audio control
     2. Audio feedback
     3. Skeleton tracker
     Waiting. 
     
Part of the implementation command: 
------------------------------------------------------------------------------------------------------------------------------
All the command need to be run in the workspace, our workspace is:  

	$~/catkin_ws 
	
And you’d better run the following command before use run the ros nodes or packages: 

	$. devel/setup.bash 
	
1.
  Gmapping: 

	$ roslaunch hunter Hunter_gmapping.launch 
	$ roslaunch hunter Hunter_gmapping_rviz.launch  
	
  Save the map: 
  
	$ rosrun map_server map_server –f  <name> 
	
  Keyboard Control: 
	 
	$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py 
	
  Voice Control: 
  
	$ roslaunch hunter_navigatino_goal voice_cmd.launch 
	
2. 
  Navigation: 

	$ roslaunch hunter Hunter_navigation.launch 
	$ roslaunch hunter Hunter_navigation_rviz.launch  
	
  Reset localization: 
  
	$ rosservice call /global_localization 
	
3. 
  Send goal Directly send goal: 
  
	$ roslaunch hunter_navigation_goals Hunter_navigation_goals.launch 
	
  Send goal by voice control: 
  
	$ roslaunch hunter_navigation_goals SendGoal.launch 
	
4. 
  Voice feedback       
  
	$ roslaunch ‘/home/hunter/catkin_ws/src/pioneer3at_ETSIDI/pioneer_utils/voice_audio/launch/voice_cmd.launch 
	
  Check output: 
  
	$ rostopic echo recognizer/output 
	
5. 
  Voice recognize 

	$ rosrun pocketsphinx recognizer.py 
	
6. 
  Kinect test   
  
	$ cd catkin_ws/src/libfreenect2/build/bin         
	$ . Pronect 
	
7. 
  Skeleton tracker
  
	$ cd NiTE-Linux-x64-2.2/Samples/Bin 
	$ . UserViewer

