# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "core_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Icore_msgs:/home/jyj/myslam/src/core_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(core_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" NAME_WE)
add_custom_target(_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core_msgs" "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" ""
)

get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" NAME_WE)
add_custom_target(_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core_msgs" "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" NAME_WE)
add_custom_target(_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core_msgs" "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" "sensor_msgs/Image:sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" NAME_WE)
add_custom_target(_core_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core_msgs" "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs
)
_generate_msg_cpp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs
)
_generate_msg_cpp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs
)
_generate_msg_cpp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(core_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(core_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(core_msgs_generate_messages core_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_cpp _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_cpp _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_cpp _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_cpp _core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_msgs_gencpp)
add_dependencies(core_msgs_gencpp core_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs
)
_generate_msg_eus(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs
)
_generate_msg_eus(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs
)
_generate_msg_eus(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(core_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(core_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(core_msgs_generate_messages core_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_eus _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_eus _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_eus _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_eus _core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_msgs_geneus)
add_dependencies(core_msgs_geneus core_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs
)
_generate_msg_lisp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs
)
_generate_msg_lisp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs
)
_generate_msg_lisp(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(core_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(core_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(core_msgs_generate_messages core_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_lisp _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_lisp _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_lisp _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_lisp _core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_msgs_genlisp)
add_dependencies(core_msgs_genlisp core_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs
)
_generate_msg_nodejs(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs
)
_generate_msg_nodejs(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs
)
_generate_msg_nodejs(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(core_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(core_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(core_msgs_generate_messages core_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_nodejs _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_nodejs _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_nodejs _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_nodejs _core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_msgs_gennodejs)
add_dependencies(core_msgs_gennodejs core_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs
)
_generate_msg_py(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs
)
_generate_msg_py(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs
)
_generate_msg_py(core_msgs
  "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(core_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(core_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(core_msgs_generate_messages core_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/yolomsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_py _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/multiarray.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_py _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/markermsg.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_py _core_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jyj/myslam/src/core_msgs/msg/ball_position.msg" NAME_WE)
add_dependencies(core_msgs_generate_messages_py _core_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_msgs_genpy)
add_dependencies(core_msgs_genpy core_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(core_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(core_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(core_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(core_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(core_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(core_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(core_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(core_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(core_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(core_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
