eval $(../../redoconf/sh-init)
rc_source_cat ../../config

redo redo-files

(echo incls; rc_cat src_dir_list) | while read dir; do
  rc_append CFLAGS "-I$(pwd)/$dir"
  rc_append CXXFLAGS "-I$(pwd)/$dir"
done

rc_append CFLAGS "-I$SELF_WORKING_DIR/objects/glue"
rc_append CXXFLAGS "-I$SELF_WORKING_DIR/objects/glue"

cat <<"EOF"

default_compile() {
  local rev=$1
  shift
  if [ -e $1.c ]; then
    CFLAGS="$CFLAGS -include _precompiled.hh" c_compile "$3" "$1.c"
  elif [ -e $1.cpp ]; then
    CXXFLAGS="$CXXFLAGS -include _precompiled.hh" cxx_compile "$3" "$1.cpp"
  else
    echo "Could not compile $1$2" >&2
    exit 1
  fi
}

EOF
