# To Install WebSVN for Debian 8
apt-get update
apt-get -y install subversion
apt-get -y install libapache2-svn
mkdir /var/svn-repos/
svnadmin create --fs-type fsfs /var/svn-repos/project_zen
svnadmin create --fs-type fsfs /var/svn-repos/project_wombat
groupadd subversion
addgroup khmf1 subversion
addgroup root subversion
chown -R www-data:subversion /var/svn-repos/*
chmod -R 770 /var/svn-repos/*
mkdir ~/.ssh/
mkdir /home/user1/.ssh/
cd ~/.ssh/
cd /home/user1/.ssh/
ssh-keygen -t dsa
cat ~/.ssh/id_dsa.pub | ssh user1@example.com "cat - >> ~/.ssh/authorized_keys"
cat /home/user1/.ssh/id_dsa.pub | ssh user1@example.com "cat - >> /home/user1/.ssh/authorized_keys"
ssh-agent
ssh-add
ssh user1@example.com
mkdir ~/TEMP/
mkdir /home/user1/TEMP/
echo "testing svn" > ~/TEMP/testing.txt
echo "testing svn" > /home/user1/TEMP/testing.txt
svn import -m "importing test over ssh+svn" ~/TEMP/ svn+ssh://example.com/var/svn-repos/project_zen/trunk
svn import -m "importing test over ssh+svn" /home/user1/TEMP/ svn+ssh://example.com/var/svn-repos/project_zen/trunk
svn co svn+ssh://example.com/var/svn-repos/project_zen/trunk testcheckout
svnlook tree /var/svn-repos/project_zen/
a2enmod dav
a2enmod dav_svn

dpkg-reconfigure websvn
htpasswd -c /etc/apache2/dav_svn.passwd user1
htpasswd -c /etc/apache2/dav_svn.passwd root
nano /etc/apache2/mods-available/dav_svn.conf
/etc/init.s/apache2 restart
service httpd restart
service apache2 restart
find / -name apache2
/etc/init.d/apache2 restart
/etc/init.d/apache2 start
journalctl -xn
touch /etc/apache2/envvars
nano /etc/apache2/envvars
service apache2 restart
sudo apt-get remove apache2*
sudo apt-get -y remove apache2*
sudo apt-get -y install apache2
service apache2 restart
svn import -m "testing over https" https://example.com/svn_wombat ~/TEMP/
svn import -m "testing over https" https://example.com/svn_wombat /home/user1/TEMP/
ifconfig

svn help import
apt-get -y install enscript
cd /etc/apache2/
mkdir conf.d
apt-get -y install websvn
nano /etc/websvn/svn_deb_conf.inc
nano /etc/apache2/mods-available/dav_svn.conf
# <Location /svn>  take out the #
# DAV svn take out the #
# SVNParentPath /var/lib/svn  take out the #
# </Location> take out the #
#  <LimitExcept GET PROPFIND OPTIONS REPORT> take out #
#    Require valid-user take out #
#  </LimitExcept> take out #
#  AuthType Basic  take out #
#  AuthName "Subversion Repository" take out #
#  AuthUserFile /etc/apache2/dav_svn.passwd take out #
