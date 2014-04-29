cmake_minimum_required(VERSION 2.8.3)
project(yocs_msgs)

find_package(catkin REQUIRED COMPONENTS std_msgs geometry_msgs std_srvs message_generation)

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

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(CATKIN_DEPENDS std_msgs geometry_msgs std_srvs message_runtime)
