#!/bin/bash

container_name="ros_master"
command_executed=false

while true; do
    # Check if the ros_master container is running
    if docker ps --format '{{.Names}}' | grep -q "$container_name"; then
        echo "Container is running"

        # Check if the command has not been executed yet
        if [ "$command_executed" = false ]; then
            echo "Executing specified command"

            # Run the command you want when the container is running
            docker run -it --rm --entrypoint inside.sh ros_master

            # Set the flag to indicate that the command has been executed
            command_executed=true
        fi

        # Sleep for a while before checking again (adjust the sleep duration as needed)
        sleep 60
    else
        echo "Container is not running"

        # Reset the flag when the container is not running
        command_executed=false

        # Sleep for a while before checking again (adjust the sleep duration as needed)
        sleep 60
    fi
done
