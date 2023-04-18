
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

Download: Local Installer for Linux x86_64 (Tar)

Then run the following commands:

```
tar -xvf cudnn-linux-x86_64-8.4.1.50_cuda11.6-archive.tar.xz
sudo cp cudnn-*-archive/include/cudnn*.h /usr/local/cuda/include 
sudo cp -P cudnn-*-archive/lib/libcudnn* /usr/local/cuda/lib64 
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
```



# Installing the correct GPU version of Paddle


```
python3 -m pip install paddlepaddle-gpu==2.4.2.post117 -f https://www.paddlepaddle.org.cn/whl/linux/mkl/avx/stable.html

```

And check in python if it is installed correctly:
```
import paddle
paddle.utils.run_check()
```

