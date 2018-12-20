#!/usr/bin/env python

"""
voice_cmd_vel.py is a simple demo of speech recognition.
  You can control a mobile base using commands found
  in the corpus file.
"""

import roslib; roslib.load_manifest('pocketsphinx')
import roslib
import rospy
import math
import subprocess
import os, signal
import time
import psutil

from std_msgs.msg import String

from sound_play.libsoundplay import SoundClient

import actionlib
import tf
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, PoseWithCovarianceStamped, Point, Quaternion, Twist
from nav_msgs.msg import Odometry
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from random import sample
from math import pow, sqrt

def kill(proc_pid):
    process = psutil.Process(proc_pid)
    for proc in process.get_children(recursive=True):
        proc.terminate()
    process.terminate()

class voice_cmd_vel:

    def __init__(self):
        rospy.on_shutdown(self.cleanup)
        self.speed = 0.1
        self.buildmap = False
        self.follower = False
        self.navigation = False
        self.msg = Twist()
        
        # .txt file with name and x, y coordinates for location
        self.map_locations = rospy.get_param("~map_locations")
        # cmd_vel topic name
        self.cmd_vel_topic = rospy.get_param("~cmd_vel_topic", "cmd_vel")
                       
        self.locations = dict()
        fh=open(self.map_locations)
        for line in fh:
            name = line.rstrip().split(":")
            temp = str(line.rstrip().rsplit(":", 1)[1])
            coordinates = temp.split()
            self.locations[name[0]] = Pose(Point(float(coordinates[0]), float(coordinates[1]), 0.000), Quaternion(*tf.transformations.quaternion_from_euler(0, 0, 0)))

        # Create the sound client object
        self.soundhandle = SoundClient()
       
        rospy.sleep(1)
        self.soundhandle.stopAll()
        
         # Subscribe to the move_base action server
        self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        
        rospy.loginfo("Waiting for move_base action server...")
        
        # Wait 60 seconds for the action server to become available
        self.move_base.wait_for_server(rospy.Duration(60))
        
        rospy.loginfo("Connected to move base server")
       
        # Announce that we are ready for input
        rospy.sleep(1)
        self.soundhandle.say('Hi, we are hunter group')
        rospy.sleep(2)
        self.soundhandle.say("please speak a goal")

        # publish to cmd_vel, subscribe to speech output
        self.pub = rospy.Publisher(self.cmd_vel_topic, Twist, queue_size=2)
        rospy.Subscriber('recognizer/output', String, self.speechCb)

        r = rospy.Rate(10.0)
        while not rospy.is_shutdown():
            self.pub.publish(self.msg)
            r.sleep()
        
    def speechCb(self, msg):
        rospy.loginfo(msg.data)

        if msg.data.find("door") > -1:
            if self.speed != 0:
                self.soundhandle.say('we are going to the door')
            else:
                self.soundhandle.say('Already at door')
	if msg.data.find("office") > -1:
            if self.speed != 0:
                self.soundhandle.say('we are going to the office')
            else:
                self.soundhandle.say('Already at office')
	if msg.data.find("gap") > -1:
            if self.speed != 0:
                self.soundhandle.say('we are going to the gap')
            else:
                self.soundhandle.say('Already at gap')
	if msg.data.find("center") > -1:
            if self.speed != 0:
                self.soundhandle.say('we are going to the gap')
            else:
                self.soundhandle.say('Already at center')


       
