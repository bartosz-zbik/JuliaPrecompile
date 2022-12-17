#!/bin/bash

# Make an alias or a link to this file in your bin


# find the directory of the whole project
SOURCE=${BASH_SOURCE[0]}
while [ -L "$SOURCE" ]; do
  PROJECT_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$PROJECT_DIR/$SOURCE
done
PROJECT_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

# alternatively set this path to where you store the repo
# PROJECT_DIR="$HOME/local/JuliaPrecompile"


IMAGE_PATH="$PROJECT_DIR/sys_jds_bundle.so"
STARTUP_FILE_PATH="$PROJECT_DIR/resources/jds_startup_file.jl"

julia --project="$PROJECT_DIR" --sysimage "$IMAGE_PATH" --load "$STARTUP_FILE_PATH" "$@"

