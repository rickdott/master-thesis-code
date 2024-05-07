#!/bin/bash
# Execute commands that require additional capabilities
mount.cifs -o username=<solis-id>,password=<password> '//131.211.220.9/pf_researchdata$/Leerstoel Stigchel/Rick Otter/' /workspace/data
# Proceed with the usual startup routine
sleep infinity