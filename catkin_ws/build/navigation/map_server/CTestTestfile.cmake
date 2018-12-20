# CMake generated Testfile for 
# Source directory: /home/hunter/catkin_ws/src/navigation/map_server
# Build directory: /home/hunter/catkin_ws/build/navigation/map_server
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_map_server_gtest_map_server_utest "/home/hunter/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/hunter/catkin_ws/build/test_results/map_server/gtest-map_server_utest.xml" "--return-code" "/home/hunter/catkin_ws/devel/lib/map_server/map_server_utest --gtest_output=xml:/home/hunter/catkin_ws/build/test_results/map_server/gtest-map_server_utest.xml")
ADD_TEST(_ctest_map_server_rostest_test_rtest.xml "/home/hunter/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/hunter/catkin_ws/build/test_results/map_server/rostest-test_rtest.xml" "--return-code" "/opt/ros/indigo/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/hunter/catkin_ws/src/navigation/map_server --package=map_server --results-filename test_rtest.xml --results-base-dir \"/home/hunter/catkin_ws/build/test_results\" /home/hunter/catkin_ws/src/navigation/map_server/test/rtest.xml ")
