# Installs fail2ban on the latest version of ubuntu
#fixes the broken dependecy issue in apt-get install fail2ban 

wget -O fail2ban.deb https://github.com/fail2ban/fail2ban/releases/download/1.1.0/fail2ban_1.1.0-1.upstream1_all.deb
wget -O fail2ban.deb.asc https://github.com/fail2ban/fail2ban/releases/download/1.1.0/fail2ban_1.1.0-1.upstream1_all.deb.asc

gpg --verify fail2ban.deb.asc fail2ban.deb
dpkg -I fail2ban.deb
sudo service fail2ban stop
sudo dpkg -i fail2ban.deb
sudo apt -f install

sudo systemctl start fail2ban
sudo systemctl status fail2ban