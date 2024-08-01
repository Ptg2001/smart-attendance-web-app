#!/bin/bash

# Install cmake
sudo apt-get install cmake

wget https://files.pythonhosted.org/packages/05/57/e8a8caa3c89a27f80bc78da39c423e2553f482a3705adc619176a3a24b36/dlib-19.17.0.tar.gz

tar -xvzf dlib-19.17.0.tar.gz

cd dlib-19.17.0/

sudo python3 setup.py install
# Install Python packages
pip install -r requirements.txt
