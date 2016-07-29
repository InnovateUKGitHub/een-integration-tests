#!/bin/bash
####################################
#
# Installs composer dependencies for integration tests
# 
####################################

# causes all variables defined from now on to be exported
set -a

# exit on error
set -e

workspace=`pwd`

cd $workspace/test/integration
./composer.phar install
cd $workspace
