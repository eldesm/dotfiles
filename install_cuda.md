
# For installing CUDA toolkit 11.7 and drivers
`wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run`
`sudo sh cuda_11.7.0_515.43.04_linux.run`

For a detailed installation and debugging: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#runfile-installation

Afterwards don't forget to add the following lines to your .bashrc

`export PATH=/usr/local/cuda-11.7/bin${PATH:+:${PATH}}`
`export LD_LIBRARY_PATH=/usr/local/cuda-11.7/lib64\
                         ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}`



