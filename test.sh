#!/bin/bash

bundle exec puppet apply \
  --modulepath modules \
  --verbose \
  --detailed-exitcodes \
  -e 'include ::var_testing'

exit $?
