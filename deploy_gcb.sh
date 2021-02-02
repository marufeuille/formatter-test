#!/bin/sh
gcloud beta builds triggers create github \
  --trigger-config="trigger_config.yaml"