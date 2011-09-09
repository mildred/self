eval $(../../../redoconf/sh-init)
rc_source ../config

cxx_link $3 $(rc_cat list | cut -f1)

