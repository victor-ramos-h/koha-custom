#!/bin/bash

set -e
service apache2 start
/bin/bash -c "trap : TERM INT; sleep infinity & wait"