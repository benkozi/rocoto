#!/usr/bin/env bash

set -e

pushd ~/htmp
mv workflowengine.out old.workflowengine.out.$(date +"%Y%m%d-%H%M%S")
popd

pushd ~/l/sandbox/rocoto/
git pull
popd

./launch_FV3LAM_wflow.sh