#!/bin/sh

# Build iStoreOS rootfs using ImageBuilder
# Target: armsr/armv8

make image \
  PACKAGES="$(tr '\n' ' ' < packages.list)" \
  FILES=files