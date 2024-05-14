#!/bin/bash
# Make sure env variables are set
if [ -z "$SOLIS_ID" ] || [ -z "$PASSWORD" ]; then
    echo "Environment variables SOLIS_ID and PASSWORD must be set"
    exit 1
fi
# Execute commands that require additional capabilities
mount.cifs -o username=${SOLIS_ID},password=${PASSWORD} '//131.211.220.9/pf_researchdata$/Leerstoel Stigchel/Rick Otter/' /workspace/data

# Remove password env variable for security
unset PASSWORD

# Proceed with the usual startup routine
sleep infinity