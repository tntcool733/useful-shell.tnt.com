#!/bin/bash

url=$1
curl -v -w "@curl-format.txt" -o /dev/null -s "$url"
