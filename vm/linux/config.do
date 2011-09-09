eval $(../../redoconf/sh-init)
rc_source_cat ../../config

rc_cat src_dir_list | while read dir; do
  rc_append CFLAGS "-I$(dirname "`pwd`")/src/$dir"
  rc_append CXXFLAGS "-I$(dirname "`pwd`")/src/$dir"
done

rc_append CFLAGS "-I$SELF_WORKING_DIR/objects/glue"
rc_append CXXFLAGS "-I$SELF_WORKING_DIR/objects/glue"
rc_append CFLAGS "-I$(pwd)/incls"
rc_append CXXFLAGS "-I$(pwd)/incls"

