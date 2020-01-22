#!/bin/bash

# script to ease compilation with musl on platforms with old glibc (2.27-)
TARGET=$1
MUSL_GCC="/usr/local/musl/bin/musl-gcc"

# run the build
CC=${MUSL_GCC} make ${TARGET}
