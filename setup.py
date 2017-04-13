import sys
import os
from urllib.requests import urlretrieve
import subprocess

#install anaconda2 if not already installed
def install_anaconda():
	homedir = os.path.expanduser('~')
	anaconda_dir = homedir + '/anaconda3'
	if not os.path.isdir(anaconda_dir):
		anaconda_file = 'anaconda.sh'
		urlretrieve('https://repo.continuum.io/archive/Anaconda2-4.3.1-Linux-x86_64.sh',os.path.join(homedir,anaconda_file))
		subprocess.call("bash {0} -b -p {1}".format(os.path.join(homedir,anaconda_file),os.path.join(homedir,'anaconda2')).split())
		cmd_set_path = 'export PATH="{0}/anaconda2/bin:$PATH"'.format(homedir)
		print('setting path using : ', cmd_set_path)
		subprocess.call(cmd_set_path.split())

if __name__ == '__main__':
	install_anaconda()



