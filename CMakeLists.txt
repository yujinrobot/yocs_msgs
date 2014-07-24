cmake_minimum_required(VERSION 2.8.3)
project(yocs_msgs)

find_package(catkin REQUIRED COMPONENTS actionlib_msgs std_msgs geometry_msgs std_srvs message_generation)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  Wall.msg
  WallList.msg
  Column.msg
  ColumnList.msg
  Table.msg
  TableList.msg
  Waypoint.msg
  WaypointList.msg
  ARPair.msg
  ARPairList.msg
)

add_service_files(
  FILES
  WaypointListService.srv
)

add_action_files(
  DIRECTORY action
  FILES
  NavigateTo.action
)

generate_messages(DEPENDENCIES actionlib_msgs std_msgs geometry_msgs std_srvs)

catkin_package(CATKIN_DEPENDS actionlib_msgs std_msgs geometry_msgs std_srvs message_runtime)
