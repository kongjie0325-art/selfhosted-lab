#!/bin/bash

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: ./analyze_network.sh <TARGET_IP>"
  exit 1
fi

echo "===== PING ====="
ping -c 5 $TARGET

echo "===== TRACEROUTE ====="
traceroute $TARGET

echo "===== MTR ====="
mtr -r -c 5 $TARGET
