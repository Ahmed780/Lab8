#!/bin/bash
if [ ! -d ./thumbnails ];
then
echo "thumbnails directory does not exist .... creating a directory ..."
mkdir ./thumbnails
fi 
for f in *.jpg;
do 
outfilename="./thumbnails/"$f
convert -thumbnail '32x32' $f $outfilename
done