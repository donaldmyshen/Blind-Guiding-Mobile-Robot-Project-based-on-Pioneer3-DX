# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "audio_common_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iaudio_common_msgs:/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(audio_common_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg" NAME_WE)
add_custom_target(_audio_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "audio_common_msgs" "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(audio_common_msgs
  "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/audio_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(audio_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/audio_common_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(audio_common_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(audio_common_msgs_generate_messages audio_common_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(audio_common_msgs_generate_messages_cpp _audio_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(audio_common_msgs_gencpp)
add_dependencies(audio_common_msgs_gencpp audio_common_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS audio_common_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(audio_common_msgs
  "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/audio_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(audio_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/audio_common_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(audio_common_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(audio_common_msgs_generate_messages audio_common_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(audio_common_msgs_generate_messages_lisp _audio_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(audio_common_msgs_genlisp)
add_dependencies(audio_common_msgs_genlisp audio_common_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS audio_common_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(audio_common_msgs
  "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/audio_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(audio_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/audio_common_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(audio_common_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(audio_common_msgs_generate_messages audio_common_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hunter/catkin_ws/src/audio_common/audio_common_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(audio_common_msgs_generate_messages_py _audio_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(audio_common_msgs_genpy)
add_dependencies(audio_common_msgs_genpy audio_common_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS audio_common_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/audio_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/audio_common_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/audio_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/audio_common_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/audio_common_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/audio_common_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/audio_common_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
