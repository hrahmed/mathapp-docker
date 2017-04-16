#!/bin/sh
path=$(pwd)

echo "Building ACC Config Server image"
cd $path/configserver; ./build-image.sh ;

echo "Building MathApp java image"
cd $path/mathclient; ./build-image.sh ;
cd $path/mathproxy; ./build-image.sh ;
cd $path/mathsimple; ./build-image.sh ;
cd $path/mathcomplex; ./build-image.sh ;
cd $path/mathnode; ./build-image.sh ;
