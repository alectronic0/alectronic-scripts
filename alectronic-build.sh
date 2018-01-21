#!/bin/sh

clear;
echo "Installing Alectronic Packages"

# Change desktop apperance
# on unity
#gsettings set com.canonical.Unity.Launcher launcher-position Bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

sudo vi /etc/default/grub
sudo update-grub

sudo apt-get -y install nvidia-384

sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y  remove remmina \
transmission-common \
transmission-gtk \
ubuntu-web-launchers \
gnome-mahjongg \
gnome-mines \
gnome-sudoku \
rhythmbox \
aisleriot \
cheese \
gnome-calculator \
docker \
docker-engine docker.io

snap install rubymine --classic
snap install pycharm-professional --classic
snap install datagrip --classic
snap install phpstorm --classic
snap install goland --classic
snap install intellij-idea-ultimate --classic
snap install webstorm --classic
snap install clion --classic
snap install atom --classic
snap install inkscape
snap install gimp


sudo apt-get -y install firefox \
libreoffice \
blender \
audacity \
lmms \
handbrake \
handbrake-cli \
git \
git-gui \
mysql-server \
libmysqlclient-dev \
mysql-workbench \
postgresql \
postgresql-contrib \
filezilla \
wireshark \
speedtest-cli \
nmap \
traceroute \
meld \
gparted \
tree \
steam \
shutter \
bleachbit \
brasero \
wine \
curl \
apt-transport-https \
ca-certificates \
software-properties-common \
docker-ce \
libc6:i386 \
libncurses5:i386 \
libstdc++6:i386 \
lib32z1 \
libbz2-1.0:i386 \
python-pip \
python-dev \
build-essential \
openvpn \
network-manager-openvpn-gnome \

sudo systemctl restart network-manager

#gimp \
#inkscape \
#openjdk-8-jdk \
#maven \
#vlc \
#browser-plugin-vlc \
#spotify-client \


# Get Keys
#chrome
sudo wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# Opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Virtual Box
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add Repos
#chrome
sudo add-apt-repository 'deb http://dl.google.com/linux/deb/ stable non-free main'
# Opera
sudo add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
# MongoDB
sudo add-apt-repository 'deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse'
# Docker
#sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'
sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable'
# Virtual Box
sudo add-apt-repository 'http://download.virtualbox.org/virtualbox/debian artful contrib'

# Update apt-get
sudo apt-get update

sudo apt-get -y install google-chrome-stable \
opera-stable \
mongodb-org \
docker-ce \
virtualbox-5.2 \
dkms


#Download Deb
#Skype
wget -P /tmp/alectronic/skype/ https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i /tmp/alectronic/skype/skypeforlinux-64.deb
#Slack
wget -P /tmp/alectronic/slack/ https://downloads.slack-edge.com/linux_releases/slack-desktop-3.0.2-amd64.deb
sudo dpkg -i /tmp/alectronic/slack/slack*.deb
#Gitkraken
wget -P /tmp/alectronic/gitKraken/ https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i /tmp/alectronic/gitKraken/gitkraken-amd64.deb

#Android Studio
wget -P /tmp/alectronic/android-studio/  https://dl.google.com/dl/android/studio/ide-zips/3.0.1.0/android-studio-ide-171.4443003-linux.zip
sudo unzip /tmp/alectronic/android-studio/android-studio-ide*.zip -d /opt/ide/
#/opt/ide/android-studio/bin/studio.sh
#vi /usr/local/share/applications/androidstudio.desktop
#[Desktop Entry]
#Version=1.0
#Type=Application
#Name=Android Studio
#Exec="/opt/ide/android-studio/bin/studio.sh" %f
#Icon=/opt/ide/android-studio/bin/studio.png
#Categories=Development;IDE;
#Terminal=false
#StartupNotify=true
#StartupWMClass=android-studio



# Other special ones
curl -s "https://get.sdkman.io" | bash
source "/home/alec/.sdkman/bin/sdkman-init.sh"
sdk install java
sdk install groovy
sdk install scala
sdk install kotlin
sdk install maven
sdk install gradle

# virtualenv virtualenvwrapper
sudo pip install virtualenv virtualenvwrapper
sudo pip install --upgrade pip
printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/virtualenvs' 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc
mkdir -p $WORKON_HOME

#NodeJs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

#Docker-Compose (Don't be root)
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
# should be docker-compose version 1.18.0, build 1719ceb

#Install SSH and VPN Keys



#rm -rf ~/opt

mkdir -p ~/opt/alectronic0 && cd ~/opt/alectronic0

git clone https://github.com/alectronic0/alectronic-chirper.git
git clone https://github.com/alectronic0/alectronic-polls.git
git clone https://github.com/alectronic0/alectronic-springboot.git
git clone https://github.com/alectronic0/alectronic-flask.git
git clone https://github.com/alectronic0/alectronic-gogo.git
git clone https://github.com/alectronic0/alectronic-cv.git
git clone https://github.com/alectronic0/alectronic0.github.io.git
git clone https://github.com/alectronic0/ProjectAome.git
git clone https://github.com/alectronic0/Project-Jam-Jar.git
git clone https://github.com/alectronic0/HostelShirtMaker.git
git clone https://github.com/alectronic0/android-example-projects.git
git clone https://github.com/alectronic0/MyFirstPython.git
git clone https://github.com/alectronic0/palindrome.git
git clone https://github.com/alectronic0/FizzBuzz.git
git clone https://github.com/alectronic0/fairyLights.git
git clone https://github.com/alectronic0/fairylight2.0.git

mkdir -p ~/opt/hackthenight && cd ~/opt/hackthenight
git clone https://github.com/hackthenight/doom-ai.git
git clone https://github.com/hackthenight/ProjectAome.git
git clone https://github.com/hackthenight/cvpiratefilter.git

mkdir -p ~/opt/hacking-science && cd ~/opt/hacking-science
git clone https://github.com/hacking-science/hacking-science-website.git

mkdir -p ~/opt/dm && cd ~/opt/dm
git clone https://github.com/hmcts/document-management-store-app.git
git clone https://github.com/hmcts/document-management-store-api-gateway-web.git
git clone https://github.com/hmcts/document-management-viewer.git
git clone https://github.com/hmcts/document-management-performance-tests.git
git clone https://github.com/hmcts/document-management-integration-tests.git
git clone https://github.com/hmcts/document-management-smoke-tests.git
git clone https://github.com/hmcts/document-management-node-demo.git
git clone https://github.com/hmcts/document-management-java-demo.git
git clone https://github.com/hmcts/document-management-store-infrastructure.git
git clone https://github.com/hmcts/document-management-store-postgres-db.git

mkdir -p ~/opt/open-hmcts && cd ~/opt/open-hmcts
git clone https://github.com/hmcts/document-management-client.git
git clone https://github.com/hmcts/auth-checker-lib.git
git clone https://github.com/hmcts/java-logging.git
git clone https://github.com/hmcts/nodejs-logging.git
git clone https://github.com/hmcts/nodejs-healthcheck.git
git clone https://github.com/hmcts/nodejs-info-provider.git

#Other TODO stuff

# Install Lightwork https://www.lwks.com
#
# Install Adobe Reader
#
# Install MS Money (Via Wine)
# wget -P /tmp/alectronic/msmoney/ https://download.microsoft.com/download/2/5/5/2557D51B-AF4C-4123-8198-563ABA07337B/USMoneyDlxSunset.exe
# Unity
# Install Pushbullet (Currently don't want to install community one)
#
# Install Auslogic (Not need in linux)
#
# Install WinDirStat
#
# Install Minecraft
# wget -P /tmp/alectronic/Minecraft/ http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
# java -jar /tmp/alectronic/Minecraft/Minecraft.jar &
# Install EA Origin (Via Wine)
# 
# Install Unity3D
# wget -P /tmp/alectronic/unity3d/  http://download.unity3d.com/download_unity/unity-editor-5.1.0f3+2015082501_amd64.deb
# sudo dpkg -i /tmp/alectronic/unity3d/unity*.deb
# Install MonoDevelop
