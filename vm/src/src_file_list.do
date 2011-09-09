eval $(../../redoconf/sh-init)
rc_source ../../config

rc_cat ./src_dir_list | while read dir; do
  pushd "$dir" > /dev/null
  make -s rcsFileList | xargs -n 1 printf "%s/%s\n" "$dir"
  popd > /dev/null
done
  

