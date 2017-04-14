#install salt
apt-get -y install salt-minion
mkdir -p /srv/salt
cp anaconda.sls /srv/salt
cp install_conda_modules.sh /srv/salt
sudo salt-call state.sls --local anaconda

