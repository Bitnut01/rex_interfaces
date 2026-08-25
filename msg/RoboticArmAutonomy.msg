# action_type enum
uint8 ACTION_TYPE_STOP  = 0
uint8 ACTION_TYPE_CHECK = 1
uint8 ACTION_TYPE_RUN   = 2

std_msgs/Header header

uint8 action
RoboticArmTask[] tasks
int32 mission_id