
#include "SendGoals.h"

int main(int argc, char** argv)
{
    ros::init(argc, argv, "send_goals_node");
    SendGoals sg;
    ros::spin(); 
    return 0;
}
