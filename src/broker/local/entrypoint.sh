#!/bin/sh

set -e

# Check if the BRIDGE_HOSTNAME is not set or if BRIDGE_PORT is not set
if [ "${BRIDGE_HOSTNAME}" = "default" ] || [ -z "${BRIDGE_PORT}" ]; then
  echo "Error: BRIDGE_HOSTNAME and BRIDGE_PORT are required but not set."
  exit 1
fi

# Copy from template configuration file
cp /mosquitto/config/mosquitto.conf.template /mosquitto/config/mosquitto.conf

# Environment variable substitution
sed -i "s|{{BRIDGE_ADDRESS}}|${BRIDGE_HOSTNAME}:${BRIDGE_PORT}|g" /mosquitto/config/mosquitto.conf

# Start Mosquitto with the generated configuration file
exec /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
