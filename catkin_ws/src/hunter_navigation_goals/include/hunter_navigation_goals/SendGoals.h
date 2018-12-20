// =====================================================================================
//
//       Filename:  SendGoal.h
//
//    Description:
//
//        Version:  1.0
//        Created:  13/03/15 17:11:54
//       Revision:  none
//       Compiler:  g++
//
//         Author:  Cheng Zhao (Henrry), IRobotCheng@gmail.com
//        Company:
//
// =====================================================================================
#ifndef _SENDGOAL_
#define _SENDGOAL_

#include <string>
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <std_msgs/String.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/tf.h>
#include <def.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

class SendGoals{
private:
    MoveBaseClient *ac;
    move_base_msgs::MoveBaseGoal goal;

    double goal_A_x, goal_A_y, goal_A_th;
    double goal_B_x, goal_B_y, goal_B_th;
    double goal_C_x, goal_C_y, goal_C_th;
    double goal_D_x, goal_D_y, goal_D_th;
    std::string goal_A_name;
    std::string goal_B_name;
    std::string goal_C_name;
    std::string goal_D_name;
    std::string stop_name;
    ros::NodeHandle n_;
    ros::Subscriber speech_sub;
    ros::Subscriber pose_sub;
    geometry_msgs::PoseStamped tmp_pose;

public:
    SendGoals();
    void SpeechCallback(const std_msgs::StringConstPtr &SpeechStr);
    void amcl_poseCallback(const geometry_msgs::PoseWithCovarianceStampedConstPtr &amcl_pose);
    ~SendGoals();
};

#endif

