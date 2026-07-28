# communication_state enum
int32 COMMUNICATION_STATE_CREATED = 0
int32 COMMUNICATION_STATE_OPENING = 1
int32 COMMUNICATION_STATE_OPENED = 2
int32 COMMUNICATION_STATE_CLOSING = 3
int32 COMMUNICATION_STATE_CLOSED = 4
int32 COMMUNICATION_STATE_FAULTED = 5

# control_mode flags (bitmask)
int32 CONTROL_MODE_NONE = 0
int32 CONTROL_MODE_ESTOP = 1                       # 1 << 0
int32 CONTROL_MODE_STOP = 2                        # 1 << 1
int32 CONTROL_MODE_CONFIG = 4                      # 1 << 2
int32 CONTROL_MODE_DRIVE = 8                       # 1 << 3
int32 CONTROL_MODE_ROBOTIC_ARM = 16                # 1 << 4
int32 CONTROL_MODE_DEEP_SAMPLER = 32               # 1 << 5
int32 CONTROL_MODE_SURFACE_SAMPLER = 64            # 1 << 6
int32 CONTROL_MODE_DRIVE_AUTONOMY = 128            # 1 << 7
int32 CONTROL_MODE_ROBOTIC_ARM_AUTONOMY = 256      # 1 << 8
int32 CONTROL_MODE_DEEP_SAMPLER_AUTONOMY = 512     # 1 << 9
int32 CONTROL_MODE_SURFACE_SAMPLER_AUTONOMY = 1024 # 1 << 10

std_msgs/Header header
int32 communication_state
int32 control_mode
