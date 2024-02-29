#!/bin/bash

container_name="ros_master"

# Check if the container is running
if docker ps --format '{{.Names}}' | grep -q "$container_name"; then
    echo "Container is running"

    docker run -it --rm --entrypoint /path/to/myscript.sh my_image

else
    echo "Container is not running"
fi
