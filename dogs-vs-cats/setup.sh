#not needed as we included them in git. 
#wget https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/vgg16.py
#wget https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/vgg16bn.py
#wget https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/utils.py
sudo ../setup.sh
mkdir -p kaggle-data
mkdir -p data
cd kaggle-data
aws s3 sync salt://aj-kaggle/dogs-vs-cats .
unzip train.zip
unzip test1.zip
mv train ../data
