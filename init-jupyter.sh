#!/usr/bin/env bash
apt update

apt install -y python3 python3-pip
pip3 install jupyterlab-nvdashboard
jupyter labextension install jupyterlab-nvdashboard
echo ------------------
echo ------jupyterlab intallation completed
echo ------------------
echo ------------------ 
nvidia-smi
echo ------------------

jupyter lab --ip 0.0.0.0 --NotebookApp.token='' --NotebookApp.password='' --port 8888 --allow-root --no-browser &
