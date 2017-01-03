#!/bin/bash

set -e
env=opendap_variable_subsetting
conda info --envs | grep -q "^$env" && conda env remove -q -y -n $env
conda env create -f develop.yml
source activate $env
jupyter notebook --notebook-dir=. --ip=0.0.0.0
