eval $(../../../redoconf/sh-init)
rc_source ../../../config

rc_cat glueFileList | xargs cat | skipComments | sum | awk '{print "1" $1}'

