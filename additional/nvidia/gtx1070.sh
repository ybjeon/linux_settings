sudo apt-get update
sudo apt-get upgrade

# NVIDIA 410

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-410
sudo apt-mark hold nvidia-410


# CUDA 9

wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb
sudo apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda
sudo apt-mark hold cuda

# make sure that PATH is added in .bashrc/.zshrc : export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}

# download cudnn: https://developer.nvidia.com/rdp/cudnn-archive : runtime/developer -> 16.04.deb

# sudo dpkg -i ~runtime~
# sudo dpkg -i ~dev~
