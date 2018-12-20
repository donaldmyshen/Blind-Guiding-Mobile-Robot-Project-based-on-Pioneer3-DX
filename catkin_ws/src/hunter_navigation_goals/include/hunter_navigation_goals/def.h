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
#ifndef ___NIL__PIONEER_NAVIGATION_DEF__HEADER___
#define ___NIL__PIONEER_NAVIGATION_DEF__HEADER___

#include <cmath>
#include <ostream>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Point.h>

#include <errno.h>
#include <string.h>
//#include <log4cpp/Category.hh>
//#include <log4cpp/PropertyConfigurator.hh>

#include "charUtils.h"

#define DEFAULT_TF_FRAME_ODOM   "odom"      /**< the odometry tf frame */
#define DEFAULT_TF_FRAME_MAP    "map"      /**< the odometry tf frame */
#define DEFAULT_TF_FRAME_ROBOT  "base_link" /**< the robot tf frame */
#define DEFAULT_TF_FRAME_LASER  "base_laser_link"   /**< the laser tf frame */
#define DEFAULT_TF_FRAME_SONAR  "base_sonar_link"  /**< the sonar tf frame */
#define DEFAULT_TF_FRAME_CAMERA "camera_link"  /**< the camera tf frame */
#define DEFAULT_TF_FRAME_IMU "imu"  /**< the camera tf frame */

#define DEFAULT_TOPIC_ODOM  "odom"          /**< odometry topic name */
#define DEFAULT_TOPIC_LASER "base_scan"     /**< laser scan topic name */
#define DEFAULT_TOPIC_SONAR "sonar_scan"    /**< sonar reading topic name */
#define DEFAULT_TOPIC_VEL   "cmd_vel"       /**< robot's velocity topic name */
#define DEFAULT_TOPIC_JOY   "joy"           /**< joy topic name */

#define DEFAULT_TOPIC_AMCL_POSE "/amcl_pose"
#define DEFAULT_TOPIC_SPEECH_RECOGNITION "/recognizer/output"

//#define DEFAULT_TOPIC_SPEAK "speak"         /**< topic that message speak to */
//#define DEFAULT_TOPIC_EAR   "ear"           /**< topic that message heard from */
//#define DEFAULT_TOPIC_PLACE "place"         /**< topic name used to mark and get place mark in map*/
//#define DEFAULT_TOPIC_MARKS_COLLECT "marks_collect"     /**< topic to collect marks  */
//#define DEFAULT_TOPIC_MARKS_DISPLAY "marks_display"     /**< used to show marks */

#define DEFAULT_TOPIC_GOAL  "/move_base_simple/goal" /**< name for topic which send goal to navigation node*/
#define DEFAULT_TOPIC_PARTICLE "/particlecloud"         /**< particle topic name */
#define DEFAULT_SERVICE_GLOBAL_LOCALIZATION "/global_localization"  /**< global localization service name */
#define DEFAULT_PUB_RATE    50

const double D2R = M_PI/180.0;  /**< used to translate degree to radian */
const double R2D = 180.0/M_PI;  /**< used to translate radian to degree */

inline double Degree2Radian(double d)
{
    return d*D2R;
}

inline double Radian2Degree(double r)
{
    return r*R2D;
}

inline geometry_msgs::Point operator +(const geometry_msgs::Point& lhs, const geometry_msgs::Point& rhs)
{
    geometry_msgs::Point tmp(lhs);
    tmp.x += rhs.x;
    tmp.y += rhs.y;
    tmp.z += rhs.z;

    return tmp;
}

inline geometry_msgs::Point operator -(const geometry_msgs::Point& lhs, const geometry_msgs::Point& rhs)
{
    geometry_msgs::Point tmp(lhs);
    tmp.x -= rhs.x;
    tmp.y -= rhs.y;
    tmp.z -= rhs.z;

    return tmp;
}

inline double pt_dis2(const geometry_msgs::Point& lhs, const geometry_msgs::Point& rhs)
{
    return pow(lhs.x-rhs.x, 2.0) +
           pow(lhs.x-rhs.x, 2.0) +
           pow(lhs.x-rhs.x, 2.0);
}

inline double pt_dis(const geometry_msgs::Point& lhs, const geometry_msgs::Point& rhs)
{
    return sqrt(pt_dis2(lhs, rhs));
}

inline geometry_msgs::Point operator* (const geometry_msgs::Point& pt, const double m)
{
    geometry_msgs::Point tmp(pt);
    tmp.x *= m;
    tmp.y *= m;
    tmp.z *= m;

    return tmp;
}

inline geometry_msgs::Point operator* (const double m, const geometry_msgs::Point& pt)
{
    return pt*m;
}

inline geometry_msgs::Point operator/(const geometry_msgs::Point& pt, const double d)
{
    geometry_msgs::Point tmp(pt);
    tmp.x /= d;
    tmp.y /= d;
    tmp.z /= d;

    return tmp;
}

/*inline void speak_out(const std::string& text)
{
    char buf[1024];
    sprintf(buf, "ekho %s", text.c_str());
    system(buf);

    sleep(2.0);
}*/

#endif

