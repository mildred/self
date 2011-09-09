eval $(../../../redoconf/sh-init)
rc_source ../config

source="$(rc_cat list | grep "^$1$2\s" | cut -f2)"

redo-ifchange ../generated/incls/_precompiled.hh ../generated/incls/_precompiled.hh.gch

if [ glueCheckSum.o = "$1$2" ]; then
  CXXFLAGS="$CXXFLAGS -DGLUE_CHECKSUM=$(rc_shquote "$(rc_cat ../generated/glueCheckSum)")"
fi

redo-ifchange "$source"

case "$source" in
  *.c)
    CFLAGS="$CFLAGS -include _precompiled.hh" c_compile "$3" "$source"
    ;;
  *.cpp)
    CXXFLAGS="$CXXFLAGS -include _precompiled.hh" cxx_compile "$3" "$source"
    ;;
  *.s)
    # Precompile then assemble
    depsfile="$1.deps"
    rm -rf "$depsfile"
    $CC $CPPFLAGS $CXXFLAGS -M -MF "$depsfile" -E "$source" | as -o "$3" --
    redo-ifchange ${DEPS#*:}
    rm -f "$depsfile"
    ;;
  *)
    echo "Could not compile $source into $1$2" >&2
    exit 1
    ;;
esac

