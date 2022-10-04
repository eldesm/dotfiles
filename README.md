This is a reminder that I use `stow` for placing all the dotfiles in the right place. So if I want to symlink the nvim folder, I can just do:

```stow nvim```



# Install Commands

## Cuda Tooklit 11.6 for Ubuntu
wget https://developer.download.nvidia.com/compute/cuda/11.6.2/local_installers/cuda_11.6.2_510.47.03_linux.run
sudo sh cuda_11.6.2_510.47.03_linux.run

After installing you have to add the following to your bashrc
PATH includes /usr/local/cuda-11.6/bin
LD_LIBRARY_PATH includes /usr/local/cuda-11.6/lib64, or, add /usr/local/cuda-11.6/lib64 to /etc/ld.so.conf and run ldconfig as root
