#!/bin/bash

source $(dirname $0)/config.sh

make BUILDDIR=$BUILDDIR TARGET=$TARGET test