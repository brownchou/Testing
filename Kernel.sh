#!/bin/bash

if [ "$(awk -F. '{ if ($1 > 5 || ($1 == 5 && $2 >= 4)) print "yes"; else print "no" }' <<< "$(uname -r)")" = "yes" ]; then
    echo "yes"
else
    echo "no"
fi