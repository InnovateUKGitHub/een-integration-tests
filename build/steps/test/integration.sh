#!/bin/bash
####################################
#
# PHPUnit integration tests
# 
####################################

# rm -rf $workspace/test/PHPUnit/reports
cd $workspace/test/integration
./vendor/bin/phpunit -c phpunit.xml.dist || { echo "Executing ./vendor/bin/phpunit -c phpunit.xml.dist failed" ; exit 1; }
# touch $workspace/test/PHPUnit/reports/*

cd $workspace