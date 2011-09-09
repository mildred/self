eval $(../../redoconf/sh-init)

rc_cat ./src_dir_list | while read dir; do

  rev="$(sed 's/[^/]*/../g' <<<"$dir")"
  
  cat >$dir/default.o.do <<EOF
    eval \$(../../$rev/redoconf/sh-init)
    rc_source $rev/config
    default_compile "$rev" "\$@"
EOF

done

