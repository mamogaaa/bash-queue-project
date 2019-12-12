#!/bin/bash
cd $(dirname $0)
ct=$1
if [ -z "$ct" ]; then
    ct="text/html"
fi
echo -ne "Content-Type: $ct\n\n"