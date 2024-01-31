#! /bin/bash

# Save current directory
export BASEDIR=$(pwd)

# Create artifacts directory
mkdir -p artifacts

# Checkout px
git clone --depth=1 https://github.com/genotrance/px
cd px

# Build px
bash build.sh -b -d

# Copy artifacts
cp -f px.dist*/*.tar.gz $BASEDIR/artifacts/.