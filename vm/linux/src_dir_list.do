eval $(../../redoconf/sh-init)
rc_source ../../config

make -s -C ../src \
  TARGET_ARCH="$TARGET_ARCH" \
  TARGET_COMPILER="$TARGET_COMPILER" \
  srcDirList | xargs -n 1

