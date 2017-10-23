#!/bin/bash
#This is required to build the stuff

set -euo pipefail

#Add here what kind of dependencies you need in general
#Check for packages here: https://pkgs.alpinelinux.org/packages
apk --update add wget curl build-base gcc git python-dev ca-certificates py-pip freetype-dev libpng libpng-dev

#Run the installation here or in the Singularity file itself, no matter which one 

#Create mountpoints that we need
mkdir -p /lustre_cfc/qbic/megSAP-data

#Clean up
rm -rf /var/cache/apk/*

cd /
rm -rf /build
