eval $(../../redoconf/sh-init)
rc_source ../../config

cxx_compile "$3.o" ../src/makeDeps.cpp
cxx_link "$3" "$3.o"
rm -f "$3.o"

