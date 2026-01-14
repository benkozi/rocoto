#!/bin/bash
set -euo pipefail

PBS_SCRIPT="hello-world.pbs"

# Submit the job and capture the job ID
JOB_ID=$(qsub "$PBS_SCRIPT")

echo "Submitted job: $JOB_ID"
echo "Polling qstat every second..."
echo

# Loop until qstat no longer finds the job
while true; do
  qstat "$JOB_ID" || echo "hit unknown JOB_ID ${JOB_ID}"
  sleep 1
done
