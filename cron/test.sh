#!/bin/bash
set -x

PATH=/Users/jeremiecarlson/.homebrew/bin:/Users/jeremiecarlson/.homebrew/sbin:/Users/jeremiecarlson/code/depot_tools:$PATH

goma_ensure_start_py=$(cat << EOM
import sys
sys.path.append('/Users/jeremiecarlson/goma/')

from goma_ctl import *

goma = GetGomaDriver()
goma.Dispatch(['ensure_start'])
EOM
)
env GOMAMAILTO=/dev/null env GOMA_OAUTH2_CONFIG_FILE=/Users/jeremiecarlson/.goma_oauth2_config env GOMA_ENABLE_REMOTE_LINK=yes python3 -c "$goma_ensure_start_py"
