## Purpose
This is a personal machine learning repository - may not be fit for public use (due to some hard codings, lot of trial and error etc)

## Getting started on AWS
Deep learning needs a lot of compute power, better using GPU. In order to reduce the AWS costs, 
we will try to use the p2.xlarge spot instances. Current spot pricing can be seen at https://aws.amazon.com/ec2/spot/pricing/

### Launching spot instances
setup your aws credentials using 

```shell
git clone https://github.com/achinta/kaggle.git
cd kaggle/setup/aws
python launch-spot.py --name ml
```
The IP address and instnace id would be displayed. Then ssh into the instance and setup the software and install the gpu. 
This can also be given as the startup script when we launch the instance. 
```shell
#install GPU and setup software
cd ~
git clone https://github.com/fastai/courses.git
sudo bash courses/setup/install-gpu.sh
```
