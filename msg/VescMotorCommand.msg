# =================================================
# CAN ID Constants (for vesc_id field)
# =================================================

# Host
uint8 ID_ROS_CAN_HOST = 32          # 0x20 Computer interconnecting ROS and CAN BUS

# Drive Motors (VESC)
uint8 ID_FRONT_LEFT_VESC = 80       # 0x50
uint8 ID_FRONT_RIGHT_VESC = 81      # 0x51
uint8 ID_REAR_RIGHT_VESC = 82       # 0x52
uint8 ID_REAR_LEFT_VESC = 83        # 0x53

# Steppers
uint8 ID_FRONT_LEFT_STEPPER = 96    # 0x60
uint8 ID_FRONT_RIGHT_STEPPER = 97   # 0x61
uint8 ID_REAR_RIGHT_STEPPER = 98    # 0x62
uint8 ID_REAR_LEFT_STEPPER = 99     # 0x63

# Manipulator
uint8 ID_MANIPULATOR_AXIS_1 = 112   # 0x70 1st axis
uint8 ID_MANIPULATOR_AXIS_2 = 113   # 0x71 2nd axis
uint8 ID_MANIPULATOR_AXIS_3 = 114   # 0x72 3rd axis
uint8 ID_MANIPULATOR_AXIS_4 = 115   # 0x73 4th axis
uint8 ID_MANIPULATOR_AXIS_5 = 116   # 0x74 5th axis
uint8 ID_MANIPULATOR_AXIS_6 = 117   # 0x75 6th axis
uint8 ID_MANIPULATOR_GRIPPER = 118  # 0x76 Gripper

# Sampler
uint8 ID_SAMPLER_PLATFORM = 128       # 0x80 Platform movement
uint8 ID_SAMPLER_DRILL_MOV = 129      # 0x81 Drill movement
uint8 ID_SAMPLER_DRILL = 130          # 0x82 Drill action
uint8 ID_SAMPLER_CONTAINER_A = 131    # 0x83 Container A (pos only)
uint8 ID_SAMPLER_CONTAINER_B = 132    # 0x84 Container B (pos only)
uint8 ID_SAMPLER_VACUUM_SUCTION = 133 # 0x85 Main motor -1:1 duty
uint8 ID_SAMPLER_VACUUM_A = 134       # 0x86 Motor A ON-OFF (duty 0-1)
uint8 ID_SAMPLER_VACUUM_B = 135       # 0x87 Motor B ON-OFF (duty 0-1)

# Battery BMS
uint8 ID_BMS_BATTERY_LEFT = 144     # 0x90
uint8 ID_BMS_BATTERY_CENTER = 145   # 0x91
uint8 ID_BMS_BATTERY_RIGHT = 146    # 0x92

# =================================================
# Command ID Constants (for command_id field)
# =================================================

uint8 CMD_SET_DUTY = 0                  # Unit: [% / 100]
uint8 CMD_SET_CURRENT = 1               # Unit: [A]
uint8 CMD_SET_CURRENT_BRAKE = 2         # Unit: [A]
uint8 CMD_SET_RPM = 3                   # Unit: [RPM]
uint8 CMD_SET_POS = 4                   # Unit: [Deg]
uint8 CMD_SET_ORIGIN = 5                # Use set_origin_data field
uint8 CMD_SET_POS_SPEED_LOOP = 6        # Use set_pos_speed_loop_* fields

uint8 CMD_SET_CURRENT_REL = 10           # Unit: [% / 100]
uint8 CMD_SET_CURRENT_BRAKE_REL = 11     # Unit: [% / 100]
uint8 CMD_SET_CURRENT_HANDBRAKE = 12     # Unit: [A]
uint8 CMD_SET_CURRENT_HANDBRAKE_REL = 13 # Unit: [% / 100]

# =================================================
# Origin Data Constants (for set_origin_data field)
# =================================================

uint8 ORIGIN_TEMPORARY = 0  # Set temporary origin (cleared after power-off)
uint8 ORIGIN_PERMANENT = 1  # Set permanent zero point (Dual encoder models only)

# =================================================
# Message Fields
# =================================================

std_msgs/Header header

# Vesc
uint8 vesc_id
uint8 command_id
float32 set_value

# Cubemars specific
uint8 set_origin_data
float32 set_pos_speed_loop_position
float32 set_pos_speed_loop_speed
float32 set_pos_speed_loop_acceleration