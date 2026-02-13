# =========================================
# Action Type Constants
# =========================================
uint8 ACTION_STOP = 0
uint8 ACTION_FORWARD_KIN = 1
uint8 ACTION_INV_KIN_JOYSTICK = 2
uint8 ACTION_INV_KIN_POSITION = 3
uint8 ACTION_INV_KIN_OFFSET = 4
uint8 ACTION_GO_TO_REFERENCE = 5

# =========================================
# Header
# =========================================
# frame_id: Maps to C# 'Reference' (e.g., "base_link", "tool_frame")
# stamp:    Maps to C# 'Timestamp'
std_msgs/Header header

# =========================================
# Control Fields
# =========================================

# The active command type
uint8 action_type

# Forward Kinematics Data (Axis1 - Axis6)
# Maps to 'ForwardKinMode'.
float64[6] joint_positions

# Joystick / Velocity Command
# Maps to 'InverseJoystickMode' (Linear + Angular velocity)
geometry_msgs/Twist velocity_cmd

# Position / Orientation Command
# Maps to 'InversePositionMode' (Position + Rotation)
geometry_msgs/Pose pose_cmd

# Gripper Control
# Range: [-1, 1] where -1 = open, 0 = neutral, 1 = close
float64 gripper

# =========================================
# Flags
# =========================================
bool force_cartesian
bool force_movement