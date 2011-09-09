eval $(../../../redoconf/sh-init)
rc_source ../../../config

make_vmDate >&2
mv "$1$2" "$3"

