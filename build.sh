#!/bin/bash
#This is required to build the stuff

set -euo pipefail

#Add here what kind of dependencies you need in general
#Check for packages here: https://pkgs.alpinelinux.org/packages
apk --update add bash wget curl build-base gcc git python-dev ca-certificates py-pip freetype-dev libpng libpng-dev

#The actual tool installation should be done in the Singularity file itself to make the entire thing portable! 

#Create mountpoints that we need
mkdir -p /lustre_cfc/qbic/megSAP-data

#Clean up
rm -rf /var/cache/apk/*

cd /
rm -rf /build
