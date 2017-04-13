import sys
import os
import urllib
import subprocess

#install anaconda2 if not already installed
def install_anaconda():
	homedir = os.path.expanduser('~')
	anaconda_dir = homedir + '/anaconda3'
	if not os.path.isdir(anaconda_dir):
		anaconda_file = 'anaconda.sh'
		urllib.urlretrieve('https://repo.continuum.io/archive/Anaconda2-4.3.1-Linux-x86_64.sh',anaconda_file)
		subprocess.call("bash {0} -b -p {1}".format(os.path.join(homedir,anaconda_file),os.path.join(homedir,'anaconda2')).split())
		subprocess.call('export PATH="{0}/anaconda2/bin:$PATH"'.format(homedir))

		if install_result == 0:
			subprocess.call()

if __name__ == '__main__':
	install_anaconda()



