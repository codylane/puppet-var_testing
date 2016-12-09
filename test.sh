#!/bin/bash

export PUPPET_GEM_VERSION=${PUPPET_GEM_VERSION:-"${1:-4.8.0}"}
bundle update

echo "RUNNING WITH PUPPET VERSION $(bundle exec puppet --version)"

bundle exec puppet apply \
  --modulepath modules \
  --verbose \
  --detailed-exitcodes \
  -e 'include ::var_testing'

exit $?
