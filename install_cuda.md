
# For installing CUDA toolkit 11.7 and drivers

```
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
sudo sh cuda_11.7.0_515.43.04_linux.run
```

For a detailed installation and debugging: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#runfile-installation

Afterwards don't forget to add the following lines to your .bashrc

```
export PATH=/usr/local/cuda-11.7/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-11.7/lib64\
                         ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
```

# For install cuDNN v8.4.1

Download cuDNN here: https://developer.nvidia.com/cudnn

Download version: Download cuDNN v8.4.1 (May 27th, 2022), for CUDA 11.x

Download: Local Installer for Ubuntu20.04 x86_64 (Deb)

Then run the following commands:

cudnn-local-repo-ubuntu2004-8.4.1.50_1.0-1_amd64
```
sudo dpkg -i cudnn-local-repo-ubuntu2004-8.4.1.50_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-*/cudnn-local-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get install libcudnn8=8.4.1.50-1+cuda11.7
sudo apt-get install libcudnn8-dev=8.4.1.50-1+cuda11.7
sudo apt-get install libcudnn8-samples=8.4.1.50-1+cuda11.7
```
