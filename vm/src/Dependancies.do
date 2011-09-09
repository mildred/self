eval $(../../redoconf/sh-init)
rc_source ../../config

redo-ifchange Platform_$PLATFORM includeDB

rm -f incls/*.incl incls/_precompiled.hh
makeDeps Platform_$PLATFORM includeDB >&2

mv Dependencies.hh "$3"

