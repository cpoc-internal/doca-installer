sudo apt install -y linux-headers-$(uname -r)
sudo apt install -y build-essential
wget https://www.mellanox.com/downloads/DOCA/DOCA_v3.3.0/host/doca-host_3.3.0-088000-26.01-ubuntu2204_amd64.deb
sudo dpkg -i doca-host_3.3.0-088000-26.01-ubuntu2204_amd64.deb
sudo apt-get update
sudo apt-get -y install doca-all

sudo systemctl enable rshim
sudo systemctl start rshim
sudo systemctl status rshim

sudo mst start
sudo mst status -v

ibv_devinfo
lsmod | grep ib_peermem
