# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sound_play: 8 messages, 0 services")

set(MSG_I_FLAGS "-Isound_play:/home/hunter/catkin_ws/devel/share/sound_play/msg;-Isound_play:/home/hunter/catkin_ws/src/audio_common/sound_play/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sound_play_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg" "actionlib_msgs/GoalID:sound_play/SoundRequest:std_msgs/Header:sound_play/SoundRequestGoal"
)

get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg" ""
)

get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg" ""
)

get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg" ""
)

get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg" "actionlib_msgs/GoalStatus:sound_play/SoundRequestResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:sound_play/SoundRequestFeedback"
)

get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg" "sound_play/SoundRequestResult:sound_play/SoundRequestFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:sound_play/SoundRequest:sound_play/SoundRequestGoal:sound_play/SoundRequestActionFeedback:sound_play/SoundRequestActionResult:std_msgs/Header:sound_play/SoundRequestActionGoal"
)

get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg" NAME_WE)
add_custom_target(_sound_play_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sound_play" "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg" "sound_play/SoundRequest"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)
_generate_msg_cpp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
)

### Generating Services

### Generating Module File
_generate_module_cpp(sound_play
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sound_play_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sound_play_generate_messages sound_play_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_cpp _sound_play_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_play_gencpp)
add_dependencies(sound_play_gencpp sound_play_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_play_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)
_generate_msg_lisp(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
)

### Generating Services

### Generating Module File
_generate_module_lisp(sound_play
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sound_play_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sound_play_generate_messages sound_play_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_lisp _sound_play_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_play_genlisp)
add_dependencies(sound_play_genlisp sound_play_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_play_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)
_generate_msg_py(sound_play
  "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
)

### Generating Services

### Generating Module File
_generate_module_py(sound_play
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sound_play_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sound_play_generate_messages sound_play_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionGoal.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestResult.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/sound_play/msg/SoundRequest.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestFeedback.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionResult.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestActionFeedback.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestAction.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hunter/catkin_ws/devel/share/sound_play/msg/SoundRequestGoal.msg" NAME_WE)
add_dependencies(sound_play_generate_messages_py _sound_play_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sound_play_genpy)
add_dependencies(sound_play_genpy sound_play_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sound_play_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sound_play
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(sound_play_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sound_play
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(sound_play_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sound_play/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(sound_play_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
