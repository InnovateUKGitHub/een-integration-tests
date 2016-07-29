#!/bin/bash
####################################
#
# Tests to be executed after package installation on the target server
# 
####################################

# causes all variables defined from now on to be exported
set -a

workspace=`pwd`

# confirm APPLICATION_ENV is set
if [ "$APPLICATION_ENV" = "" ]; then
  echo "APPLICATION_ENV not set" 
  exit
fi

basePropsPath=$workspace/build/properties/base.properties
envPropsPath=$workspace/build/properties/$APPLICATION_ENV.properties

test -e $basePropsPath || echo "Base props not found: " $basePropsPath exit
test -e $envPropsPath || echo "Env props not found: " $envPropsPath exit

# load in environment properties
. $basePropsPath
. $envPropsPath

if [ "$APPLICATION_ENV" = "" ] || [ "$hostname" = "" ]; then
  echo "Required vars not set APPLICATION_ENV:$APPLICATION_ENV hostname:$hostname" && exit
fi

$workspace/build/steps/test/integration.sh || { echo "Executing $workspace/build/steps/test/integration.sh failed" ; exit 1; }
