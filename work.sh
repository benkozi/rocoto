#!/usr/bin/env bash

set -e

cd ~/htmp
mv workflowengine.out old.workflowengine.out.$(date +"%Y%m%d-%H%M%S") || echo "no engine.out file"

cd ~/l/sandbox/rocoto/
git pull

cd /glade/derecho/scratch/benkoz/sandbox/srw/benkozi/aqm-data/expt_dirs/aqm_grid_AQM_NA13km_suite_GFS_v16
./launch_FV3LAM_wflow.sh