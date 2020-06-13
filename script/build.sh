#!/bin/bash

source $(dirname $0)/config.sh

mkdir -p $BUILDDIR
make BUILDDIR=$BUILDDIR HOSTFILE=$HOSTFILE all

mkdir -p $BUILDDIR/include
cp -p -R include/x86/linux/* $BUILDDIR/include

mkdir -p $BUILDDIR/gcc
ln -s /usr/bin/cpp $BUILDDIR/gcc/cpp
ln -s /usr/lib/gcc/x86_64-linux-gnu/7/32/crtbegin.o $BUILDDIR/gcc/crtbegin.o
ln -s /usr/lib/gcc/x86_64-linux-gnu/7/32/crtend.o $BUILDDIR/gcc/crtend.o
ln -s /usr/lib/gcc/x86_64-linux-gnu/7/32/libgcc.a $BUILDDIR/gcc/libgcc.a

mkdir -p $BUILDDIR/gcc/include
ln -s /usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h $BUILDDIR/gcc/include/stddef.h
