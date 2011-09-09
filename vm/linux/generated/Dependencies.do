eval $(../../../redoconf/sh-init)
rc_source ../../../config

redo-ifchange ../../src/Platform_linux ../../src/includeDB

rm -rf Platform_linux includeDB incls
mkdir incls
makeDeps Platform_linux includeDB ../../src/Platform_linux ../../src/includeDB >&2

cat Dependencies.hh

