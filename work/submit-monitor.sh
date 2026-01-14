#!/bin/bash
set -euo pipefail

PBS_SCRIPT="hello-world.pbs"

for i in {1..3}; do
  JOB_ID=$(qsub "$PBS_SCRIPT")
  JOB_IDS+=("$JOB_ID")
  echo "Submitted job $i: $JOB_ID"
done

echo "Submitted job: $JOB_IDS"
echo "Polling qstat every second..."
echo

# Loop until qstat no longer finds the job
while true; do
  qstat "$JOB_IDS" || echo "hit unknown JOB_IDS"
  sleep 1
done
