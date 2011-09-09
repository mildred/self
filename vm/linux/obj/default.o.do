eval $(../../../redoconf/sh-init)
rc_source ../config

source="../../src/$(rc_cat list | grep "^$1$2\s" | cut -f2)"

redo-ifchange ../incls/_precompiled.hh ../incls/_precompiled.hh.gch

case "$source" in
  *.c)
    CFLAGS="$CFLAGS -include _precompiled.hh" c_compile "$3" "$source"
    ;;
  *.cpp)
    CXXFLAGS="$CXXFLAGS -include _precompiled.hh" cxx_compile "$3" "$source"
    ;;
  *)
    echo "Could not compile $source into $1$2" >&2
    exit 1
    ;;
esac

