# Webmin
# Author: Jason Roy
apt-get update
apt-get upgrade
cd /root
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list
apt-get update
apt-get -y install webmin
cat /var/log/secure | grep 'Failed password'
sudo tail -F /var/log/fail2ban.log
sudo journalctl -b -u fail2ban
sudo tail -F /var/log/auth.log
reboot
top
last
iptables
history
cd /home
ls
mkdir user17
cd user17
history | cut -c 8- > history08192016.txt
ls
history | cut -c 8- > history081920162.txt
