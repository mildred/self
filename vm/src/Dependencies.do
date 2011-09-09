eval $(../../redoconf/sh-init)
rc_source ../../config

redo-ifchange Platform_$PLATFORM includeDB

rm -rf incls
mkdir incls
makeDeps Platform_$PLATFORM includeDB >&2

mv Dependencies.hh "$3"

