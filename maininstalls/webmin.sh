#!/bin/sh
## Webmin
{ if (whiptail --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install Webmin?" 8 78) then
echo "User Declined Webmin"
else
sudo apt-get -y install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
sudo wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb
sudo dpkg --install webmin_1.831_all.deb
sudo echo "webminfirewall=yes" | sudo tee --append /etc/piadvanced/install/firewall.conf
fi }