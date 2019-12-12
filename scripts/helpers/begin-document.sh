#!/bin/bash
cd $(dirname $0)
title=$1
if [ -z "$title" ]; then
    title="Default title"
fi
ri=$2
rt=$3

echo "
<html>
<head>
<title>$title</title>
<meta charset='utf-8'>
"
if [ ! -z "$ri" ]; then
    printf "<meta http-equiv='refresh' content='$ri"
    if [ ! -z "$rt" ]; then
        printf ";$rt"
    fi
    printf "'>\n"
fi
echo "
<link rel='stylesheet' href='/styles/main.css'>
</head>
<body>
"