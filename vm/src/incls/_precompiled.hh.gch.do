eval $(../../../redoconf/sh-init)
rc_source ../config

redo-ifchange _precompiled.hh

gcc $CXXFLAGS -g -o "$3" _precompiled.hh


