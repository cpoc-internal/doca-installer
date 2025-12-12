sudo apt install -y linux-headers-$(uname -r)
sudo apt install -y build-essential
wget -qO - https://linux.mellanox.com/public/repo/doca/GPG-KEY-Mellanox.pub | sudo gpg --dearmor -o /usr/share/keyrings/GPG-KEY-Mellanox.pub

wget https://www.mellanox.com/downloads/DOCA/DOCA_v3.1.0/host/doca-host_3.1.0-091000-25.07-ubuntu2204_amd64.deb
sudo dpkg -i doca-host_3.1.0-091000-25.07-ubuntu2204_amd64.deb
sudo apt-get update
sudo apt-get -y install doca-all
sudo apt-get purge '^doca-.*' -y
sudo dpkg -i doca-host_3.1.0-091000-25.07-ubuntu2204_amd64.deb
sudo apt-get update
sudo apt install -y mlnx-fw-updater
sudo apt-get -y install doca-all
ls -l /opt/mellanox/doca/
