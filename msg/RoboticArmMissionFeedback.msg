std_msgs/Header header

# status enum 
uint8 STATUS_RUNNING   = 0
uint8 STATUS_SUCCESS   = 1
uint8 STATUS_CANCELLED = 2
uint8 STATUS_FAILURE   = 3

uint8 status
RoboticArmTask[] tasks
bool[] completed_tasks
int32 mission_id