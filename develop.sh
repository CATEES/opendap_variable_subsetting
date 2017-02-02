#!/bin/bash

set -e
env=binder
conda info --envs | grep -q "^$env" && conda env remove -q -y -n $env
conda env create -f environment.yml
source activate $env
jupyter notebook --notebook-dir=. --ip=0.0.0.0
