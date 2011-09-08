command="$(basename "$1$2")"
cmddir=shell
redo ../linux/all
if [ -f "../shell/$command" ]; then
  redo-ifchange "../shell/$command"
else
  redo-ifchange "../linux/$command"
  cmddir=linux
fi

cat >"$3" <<EOF
#!/bin/sh

dir="\$(dirname "\$(dirname "\$0")")"
export PATH="\$dir/shell:\$dir/linux:\$PATH"
export SELF_WORKING_DIR="\$(dirname "\$dir")"
exec "\$dir/$cmddir/$command" "\$@"

EOF

chmod +x "$3"

