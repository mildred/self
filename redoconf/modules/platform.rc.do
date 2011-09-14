eval $(../sh-init)

if [ -z "$BUILDPLATFORM" ]; then
	if which uname >/dev/null; then
		BUILDPLATFORM=$(uname)

		if [ "$BUILDPLATFORM" = "Darwin" ]; then
			BUILDPLATFORM="MacOSX"
		fi
	else
		if [ -n "$OS" ]; then
			BUILDPLATFORM=$OS
		else
			die "Unsupported platform."
		fi
	fi
fi

BUILDARCH=$(uname -m)
HAVE_X86=
HAVE_X86_64=
HAVE_PPC=

case $BUILDARCH in
  x86_64)
    HAVE_X86=1
    HAVE_X86_64=1
    ;;
  ppc|PPC)
    HAVE_PPC=1
    ;;
  i?86)
    HAVE_X86=1
    ;;
esac

rc_record BUILDPLATFORM
rc_record BUILDARCH
rc_record HAVE_X86
rc_record HAVE_X86_64
rc_record HAVE_PPC
