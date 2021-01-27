#!/bin/bash
cat "$1" | base64 -w0 > "$2"
echo
