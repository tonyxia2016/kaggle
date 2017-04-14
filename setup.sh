#install salt
apt-get -y install salt-minion
mkdir -p /srv/salt
cp anaconda.sls /srv/salt
sudo salt-call state.sls --local anaconda

