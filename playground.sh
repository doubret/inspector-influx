#!/bin/bash

set -e

DC=`which docker-compose || which docker-compose.exe`

npm run clean
npm run compile
"${DC}" up -d
node build/playground/playground.js
