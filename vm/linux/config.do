eval $(../../redoconf/sh-init)
rc_source_cat ../../config
redo ../../binaries

rc_cat src_dir_list | while read dir; do
  rc_append CPPFLAGS "-I$(dirname "`pwd`")/src/$dir"
done

rc_append CPPFLAGS "-I$SELF_WORKING_DIR/objects/glue"
rc_append CPPFLAGS "-I$(pwd)/generated/incls"
rc_append LDFLAGS "-ldl -lX11 -lXext -lpthread"
rc_append ASMFLAGS  "-x assembler-with-cpp"

if [ -n $HAVE_X86_64 ]; then
  rc_append ASMFLAGS -m32
  rc_append CFLAGS -m32
  rc_append CXXFLAGS -m32
  rc_append LDFLAGS -m32
fi

