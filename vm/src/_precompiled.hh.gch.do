eval $(../../redoconf/sh-init)
rc_source ./config

rc_cat src_file_list_precompiled | while read head; do
  find . -name "$head" 
done | xargs gcc $CXXFLAGS -funit-at-a-time -maccumulate-outgoing-args -fpch-preprocess -o "$3"
