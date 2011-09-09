eval $(../../../redoconf/sh-init)
rc_source ../../../config

redo-ifchange ../../src/Platform_$PLATFORM ../../src/includeDB

rm -f *.incl _precompiled.hh
(cd .. && makeDeps ../src/Platform_$PLATFORM ../src/includeDB) >&2

mv _precompiled.hh "$3"

