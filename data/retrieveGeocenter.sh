#!/usr/bin/bash

#We would like to retrieve a dataset automagically and save it in a directory which is NOT in version control
outdir=datasets/geocenter
mkdir -p $outdir
cd $outdir

#first download a tarball from an online resource
wget https://wobbly.earth/data/Geocenter_dec2017.tgz
#then extract the data
tar -xzvf Geocenter_dec2017.tgz

