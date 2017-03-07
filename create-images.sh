#!/bin/sh
path=$(pwd)

echo "Building ACC Config Server image"
cd $path/configserver; ./build-image.sh ;

echo "Building MathApp java image"
cd $path/mathapp; ./build-image.sh ;
