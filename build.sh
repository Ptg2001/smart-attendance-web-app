#!/bin/bash

# Install cmake
pip install cmake
pip install ./tarballs/dlib-19.19.0-cp38-cp38-win_amd64.whl
# Install Python packages
pip install -r requirements.txt
