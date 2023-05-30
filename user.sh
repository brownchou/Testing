#/bin/bash

[ "$(id -u -n)" = "root" ] && echo "hi, root" || echo "$(id -u -n)"