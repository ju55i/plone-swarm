#!/bin/sh

set -e

exec sh -c \
  "exec varnishd -F \
  -f $VCL_CONFIG \
  -s malloc,$CACHE_SIZE \
  -a :80 -a :6086,PROXY \
  $VARNISHD_PARAMS"
