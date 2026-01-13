#!/usr/bin/env bash

set -e

cd ~/htmp
mv workflowengine.out old.workflowengine.out.$(date +"%Y%m%d-%H%M%S") || echo "no engine.out file"

cd ~/l/sandbox/rocoto/
git pull

cd /glade/derecho/scratch/benkoz/sandbox/srw/benkozi/aqm-data/expt_dirs/aqm_grid_AQM_NA13km_suite_GFS_v16
rocotostat -w FV3LAM_wflow.xml -d FV3LAM_wflow.db -v 10
./launch_FV3LAM_wflow.sh

# compile on derecho --------------

#module use <srw>/modulefiles
#module load build_derecho_intel
#cd <git-rocoto>
#bash INSTALL --with-xml2-config=/glade/work/epicufsrt/contrib/derecho/libxml2-v2.12.5/xml2-config