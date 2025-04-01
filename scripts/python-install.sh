# steps to install python on runner
apt-get update
apt-get install -y python3 python3-pip 
pip3 install --upgrade pip --break-system-packages
pip install -r requirements.txt --break-system-packages
