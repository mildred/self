eval $(redoconf/sh-init)
rc_source ./config

redo-ifchange vm/$PLATFORM/obj/Self
cp vm/$PLATFORM/obj/Self "$3"

