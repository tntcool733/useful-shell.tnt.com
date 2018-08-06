#!/bin/bash

url=$1
curl -w "@curl-format.txt" -o /dev/null -s "$url"
