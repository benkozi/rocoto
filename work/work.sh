#!/usr/bin/env bash

set -e

cd ~/htmp
mv qstat.out old.qstat.out.$(date +"%Y%m%d-%H%M%S") || echo "no qstat.out file"
mv workflowengine.out old.workflowengine.out.$(date +"%Y%m%d-%H%M%S") || echo "no workflowengine.out file"

cd ~/l/sandbox/rocoto/
git pull

# aqm test ------------------------

cd /glade/derecho/scratch/benkoz/sandbox/srw/benkozi/aqm-data/ufs-srweather-app/tests/WE2E
./run_we2e_tests.py -m=derecho -a=NRAL0032 -t aqm 2>&1 | tee ~/htmp/log.aqm-test

# launch workflow -----------------

#cd /glade/derecho/scratch/benkoz/sandbox/srw/benkozi/aqm-data/expt_dirs/aqm_grid_AQM_NA13km_suite_GFS_v16
#rocotostat -w FV3LAM_wflow.xml -d FV3LAM_wflow.db -v 10
#./launch_FV3LAM_wflow.sh

# compile on derecho --------------

#module use <srw>/modulefiles
#module load build_derecho_intel
#cd <git-rocoto>
#bash INSTALL --with-xml2-config=/glade/work/epicufsrt/contrib/derecho/libxml2-v2.12.5/xml2-config