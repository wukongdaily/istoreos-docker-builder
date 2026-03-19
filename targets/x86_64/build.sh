#!/bin/sh

# Build iStoreOS rootfs using ImageBuilder
# Target: x86_64

make image \
  PACKAGES="$(tr '\n' ' ' < packages.list)" \
  FILES=files