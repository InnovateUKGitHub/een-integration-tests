#!/bin/sh

cd /home/web/mason-seeddata/

# run composer in the test directory to get test dependencies (phpunit etc)
sudo -E ./build/2-test-compile.sh

# run the tests
sudo -E ./build/3-test.sh