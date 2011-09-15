eval $(../../../../redoconf/sh-init)
rc_source ../../config

redo-ifchange _precompiled.hh

CXXFLAGS="$CXXFLAGS -g" cxx_compile "$3" _precompiled.hh
redo-stamp <"$3"

