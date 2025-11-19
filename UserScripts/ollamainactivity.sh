#!/bin/bash

# Configuration
APP_NAME="ollama"        # Name of your application
INACTIVITY_THRESHOLD=300 # 5 minutes in seconds

# Variables
LAST_ACTIVITY_FILE="/tmp/${APP_NAME}_last_activity"
PID=$(pgrep -f $APP_NAME)        # Get the PID of the application
SHUTDOWN_COMMAND="kill -9 \$PID" # Command to shut down the application (use kill or your preferred method)

# Function to update last activity time
update_last_activity() {
  echo $(date +%s) >$LAST_ACTIVITY_FILE
}

# Initialize last activity file if it doesn't exist
if [ ! -f "$LAST_ACTIVITY_FILE" ]; then
  update_last_activity
fi

while true; do
  # Check the current time and the last recorded activity time
  CURRENT_TIME=$(date +%s)
  LAST_ACTIVITY=$(cat $LAST_ACTIVITY_FILE)

  # Calculate inactivity duration
  INACTIVITY_DURATION=$((CURRENT_TIME - LAST_ACTIVITY))

  if [ "$INACTIVITY_DURATION" -gt "$INACTIVITY_THRESHOLD" ]; then
    echo "No activity detected for $INACTIVITY_DURATION seconds. Shutting down $APP_NAME..."
    eval $SHUTDOWN_COMMAND
    break
  fi

  # Sleep for a short interval before checking again (e.g., 10 seconds)
  sleep 10

  # Update the last activity time after each check
  update_last_activity
done
