# !/bin/bash

# source the ROS environment
source install/setup.bash

# run the command rostopic pub /front_lidar/second_adjust std_msgs/Int16 "data: 3"
rostopic pub /front_lidar/second_adjust std_msgs/Int16 "data: 3"

rostopic pub /back_lidar/second_adjust std_msgs/Int16 "data: 3"
```


