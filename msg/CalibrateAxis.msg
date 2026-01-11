# action_type enum
uint8 ACTION_TYPE_STOP = 0
uint8 ACTION_TYPE_RETURN_TO_ORIGIN = 1
uint8 ACTION_TYPE_CONFIRM = 2
uint8 ACTION_TYPE_CANCEL = 3
uint8 ACTION_TYPE_OFFSET = 4
uint8 ACTION_TYPE_SET_VELOCITY = 5

std_msgs/Header header
uint8 vesc_id
uint8 action_type
float32 value
