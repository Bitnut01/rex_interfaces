# hotswap_status enum
uint8 HOTSWAP_MASTER = 1
uint8 HOTSWAP_SLAVE_A = 2
uint8 HOTSWAP_SLAVE_B = 4
uint8 DRIVE_STOP = 8
uint8 HOTSWAP_GPIO_1 = 16
uint8 HOTSWAP_GPIO_2 = 32
uint8 HOTSWAP_GPIO_3 = 64
uint8 HOTSWAP_GPIO_4 = 128

std_msgs/Header header
int32 slot
int32 id
float32 voltage
float32 current
float32 temperature
float32 charge_percent
uint8 battery_status
uint8 hotswap_status
