#!/usr/bin/env bash
apt update

dpkg -s python3 &> /dev/null

if [ $? -eq 0 ]; then
    echo "Package $1 is installed!"
else
    apt install python3
fi
pip3 install jupyterlab-nvdashboard
jupyter labextension install jupyterlab-nvdashboard
echo ------------------
echo ------jupyterlab intallation completed
echo ------------------
echo ------------------ 
nvidia-smi
echo ------------------

jupyter lab --ip 0.0.0.0 --NotebookApp.token='' --NotebookApp.password='' --port 8888 --allow-root --no-browser
