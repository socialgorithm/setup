#!/usr/bin/env bash

set -e

echo "Welcome to your Socialgorithm workshop!"

command -v npm >/dev/null 2>&1 || { echo >&2 "I require npm but it's not installed. Aborting."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed. Aborting."; exit 1; }

# Download UABC
command -v uabc >/dev/null 2>&1 || npm install -g @socialgorithm/uabc

# Ask which games
read -p "What game are you competing in today? (e.g. tic-tac-toe): " GAME
git clone git@github.com:socialgorithm/${GAME}-starter

echo "Done!"
