#include "SendGoals.h"

SendGoals::SendGoals()
{
    ac = new MoveBaseClient("move_base", true);
    ros::NodeHandle n_local("~");

    n_local.getParam("goal_A_name",goal_A_name);
    n_local.getParam("goal_B_name",goal_B_name);
    n_local.getParam("goal_C_name",goal_C_name);
    n_local.getParam("goal_D_name",goal_D_name);
    n_local.getParam("stop_name",stop_name);
    n_local.getParam("goal_A_x",goal_A_x);
    n_local.getParam("goal_A_y",goal_A_y);
    n_local.getParam("goal_A_th",goal_A_th);
    n_local.getParam("goal_B_x",goal_B_x);
    n_local.getParam("goal_B_y",goal_B_y);
    n_local.getParam("goal_B_th",goal_B_th);
    n_local.getParam("goal_C_x",goal_C_x);
    n_local.getParam("goal_C_y",goal_C_y);
    n_local.getParam("goal_C_th",goal_C_th);
    n_local.getParam("goal_D_x",goal_D_x);
    n_local.getParam("goal_D_y",goal_D_y);
    n_local.getParam("goal_D_th",goal_D_th);

    speech_sub = n_.subscribe<std_msgs::String>(DEFAULT_TOPIC_SPEECH_RECOGNITION, 5, &SendGoals::SpeechCallback, this);
    pose_sub = n_.subscribe<geometry_msgs::PoseWithCovarianceStamped>(DEFAULT_TOPIC_AMCL_POSE, 5 ,&SendGoals::amcl_poseCallback, this);

    ROS_INFO("Waiting for the move_base action server");
    ac->waitForServer(ros::Duration(10));
    ROS_INFO("Connected to move base server");
}

void SendGoals::amcl_poseCallback(const geometry_msgs::PoseWithCovarianceStampedConstPtr &amcl_pose)
{
    tmp_pose.header = amcl_pose->header;
    tmp_pose.pose = amcl_pose->pose.pose;
}

void SendGoals::SpeechCallback(const std_msgs::StringConstPtr &SpeechStr)
{
    std::string str = SpeechStr->data;
    if(str.compare(0,goal_A_name.size(),goal_A_name) == 0)
    {
        goal.target_pose.header.frame_id = "base_link";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = goal_A_x;
        goal.target_pose.pose.position.y = goal_A_y;

        tf::Quaternion quaternion;
        quaternion = tf::createQuaternionFromYaw(goal_A_th);
        geometry_msgs::Quaternion qMsg;
        tf::quaternionTFToMsg(quaternion, qMsg);
        goal.target_pose.pose.orientation = qMsg;

        ROS_INFO("Sending goal to %s", goal_A_name.c_str());
        ac->sendGoal(goal);
    }

    if(str.compare(0,goal_B_name.size(),goal_B_name) == 0)
    {
        goal.target_pose.header.frame_id = "base_link";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = goal_B_x;
        goal.target_pose.pose.position.y = goal_B_y;

        tf::Quaternion quaternion;
        quaternion = tf::createQuaternionFromYaw(goal_B_th);
        geometry_msgs::Quaternion qMsg;
        tf::quaternionTFToMsg(quaternion, qMsg);
        goal.target_pose.pose.orientation = qMsg;

        ROS_INFO("Sending goal to %s", goal_B_name.c_str());
        ac->sendGoal(goal);
    }

    if(str.compare(0,goal_C_name.size(),goal_C_name) == 0)
    {
        goal.target_pose.header.frame_id = "base_link";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = goal_C_x;
        goal.target_pose.pose.position.y = goal_C_y;

        tf::Quaternion quaternion;
        quaternion = tf::createQuaternionFromYaw(goal_C_th);
        geometry_msgs::Quaternion qMsg;
        tf::quaternionTFToMsg(quaternion, qMsg);
        goal.target_pose.pose.orientation = qMsg;

        ROS_INFO("Sending goal to %s", goal_C_name.c_str());
        ac->sendGoal(goal);
    }

    if(str.compare(0,goal_D_name.size(),goal_D_name) == 0)
    {
        goal.target_pose.header.frame_id = "base_link";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = goal_D_x;
        goal.target_pose.pose.position.y = goal_D_y;

        tf::Quaternion quaternion;
        quaternion = tf::createQuaternionFromYaw(goal_D_th);
        geometry_msgs::Quaternion qMsg;
        tf::quaternionTFToMsg(quaternion, qMsg);
        goal.target_pose.pose.orientation = qMsg;

        ROS_INFO("Sending goal to %s", goal_D_name.c_str());
        ac->sendGoal(goal);
    }

    if(str.compare(0,stop_name.size(),stop_name) == 0)
    {
        goal.target_pose.header.frame_id = "map";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position = tmp_pose.pose.position;
        goal.target_pose.pose.orientation = tmp_pose.pose.orientation;

        ROS_INFO("Sending goal to stop");
        ac->sendGoal(goal);
    }
}

 SendGoals::~SendGoals()
{
    delete ac;
}
