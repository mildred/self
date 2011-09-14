eval $(../../redoconf/sh-init)
rc_source_cat ../../config
redo ../../binaries

rc_cat src_dir_list | while read dir; do
  rc_append CPPFLAGS "-I$(dirname "`pwd`")/src/$dir"
done

rc_append CPPFLAGS "-I$SELF_WORKING_DIR/objects/glue"
rc_append CPPFLAGS "-I$(pwd)/generated/incls"
rc_append LDFLAGS "-ldl -lX11 -lXext -lpthread"


if [ -n $HAVE_X86_64 ]; then
  rc_append CFLAGS -m32
  rc_append CXXFLAGS -m32
fi

