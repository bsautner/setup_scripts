sudo apt update
sudo apt upgrade
sudo apt autoremove
cd ~
wget https://s3.amazonaws.com/www.sautner.me/jdk-11.0.14_linux-aarch64_bin.tar.gz
sudo mkdir /usr/lib/jvm
cd /usr/lib/jvm
sudo tar -xvzf ~/jdk-11.0.14_linux-aarch64_bin.tar.gz

bash -c 'echo "PATH=/usr/lib/jvm/jdk-11.0.14/bin:$PATH" >> ~/.profile'
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-11.0.14/bin/java" 0
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-11.0.14/bin/javac" 0
sudo update-alternatives --set java /usr/lib/jvm/jdk-11.0.14/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/jdk-11.0.14/bin/javac

git config pull.ff only

sudo apt install mosquitto mosquitto-clients -y
sudo apt install -y python-smbus
sudo apt install -y i2c-tools
sudo apt install -y python3-pip
sudo pip3 install --upgrade setuptools
 
sudo pip3 install --upgrade adafruit-python-shell
wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py
sudo python3 raspi-blinka.py

pip3 install --upgrade adafruit-circuitpython-dotstar adafruit-circuitpython-motor adafruit-circuitpython-bmp280 paho-mqtt
pip3 install adafruit-circuitpython-mcp230xx
