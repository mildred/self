eval $(../../redoconf/sh-init)
rc_source_cat ../../config

redo redo-files

(echo incls; rc_cat src_dir_list) | while read dir; do
  rc_append CFLAGS "-I$(pwd)/$dir"
  rc_append CXXFLAGS "-I$(pwd)/$dir"
done

cat <<"EOF"

default_compile() {
  local rev=$1
  shift
  redo-ifchange $rev/_precompiled.hh.gch
  if [ -e $1.c ]; then
    c_compile "$3" $rev/_precompiled.hh.gch "$1.c"
  elif [ -e $1.cpp ]; then
    cxx_compile "$3" $rev/_precompiled.hh.gch "$1.cpp"
  else
    echo "Could not compile $1$2" >&2
    exit 1
  fi
}

EOF
