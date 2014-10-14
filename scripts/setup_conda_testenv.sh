#!/bin/bash

PY_VERSION=$1
MINICONDA_PATH=$2
ENV_NAME=$3

export PATH=$MINICONDA_PATH/bin:$PATH

conda create --quiet -n $ENV_NAME python=${PY_VERSION} numpy=1.9.0 scipy=0.14.0 matplotlib=1.4.0 cython=0.21 pip
source activate $ENV_NAME
pip install --quiet argh mako quantities pytest pytest-pep8 pytest-cov python-coveralls sphinx numpydoc sphinx_rtd_theme mock mpld3 periodictable future pycompilation pycodeexport https://github.com/sympy/sympy/archive/master.zip