# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navfn: 0 messages, 2 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navfn_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv" NAME_WE)
add_custom_target(_navfn_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navfn" "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv" ""
)

get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv" NAME_WE)
add_custom_target(_navfn_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navfn" "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(navfn
  "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navfn
)
_generate_srv_cpp(navfn
  "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navfn
)

### Generating Module File
_generate_module_cpp(navfn
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navfn
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navfn_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navfn_generate_messages navfn_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv" NAME_WE)
add_dependencies(navfn_generate_messages_cpp _navfn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv" NAME_WE)
add_dependencies(navfn_generate_messages_cpp _navfn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navfn_gencpp)
add_dependencies(navfn_gencpp navfn_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navfn_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(navfn
  "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navfn
)
_generate_srv_lisp(navfn
  "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navfn
)

### Generating Module File
_generate_module_lisp(navfn
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navfn
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navfn_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navfn_generate_messages navfn_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv" NAME_WE)
add_dependencies(navfn_generate_messages_lisp _navfn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv" NAME_WE)
add_dependencies(navfn_generate_messages_lisp _navfn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navfn_genlisp)
add_dependencies(navfn_genlisp navfn_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navfn_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(navfn
  "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navfn
)
_generate_srv_py(navfn
  "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navfn
)

### Generating Module File
_generate_module_py(navfn
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navfn
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navfn_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navfn_generate_messages navfn_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/SetCostmap.srv" NAME_WE)
add_dependencies(navfn_generate_messages_py _navfn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/src/navigation/navfn/srv/MakeNavPlan.srv" NAME_WE)
add_dependencies(navfn_generate_messages_py _navfn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navfn_genpy)
add_dependencies(navfn_genpy navfn_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navfn_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navfn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navfn
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(navfn_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navfn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navfn
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(navfn_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navfn)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navfn\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navfn
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(navfn_generate_messages_py geometry_msgs_generate_messages_py)
endif()
