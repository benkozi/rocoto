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
  if qstat "$JOB_ID" >/dev/null 2>&1; then
    clear
    qstat "$JOB_ID"
    sleep 1
  else
    echo
    echo "Job $JOB_ID no longer in qstat (finished or exited queue)."
    break
  fi
done
