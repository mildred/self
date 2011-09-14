eval $(../../redoconf/sh-init)
rc_source ../../config

(
  rc_cat ./src_dir_list | while read dir; do
    pushd "$dir" > /dev/null
    make -s rcsFileList | xargs -n 1 printf "%s/%s\n" "$dir"
    popd > /dev/null
  done

  echo "generated/vmDate.s"
  echo "../../objects/glue/xlib_glue.cpp"
  echo "../../objects/glue/stat_glue.cpp"
  echo "../../objects/glue/termcap_glue.cpp"
  echo "../../objects/glue/transcendental_glue.cpp"

) >"$3"

redo-stamp <"$3"


