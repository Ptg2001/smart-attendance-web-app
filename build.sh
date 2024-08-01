#!/bin/bash

# Install cmake
pip install cmake
pip install ./tarballs/dlib-19.24.1-cp311-cp311-win_amd64.whl
# Install Python packages
pip install -r requirements.txt
