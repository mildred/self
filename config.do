eval $(redoconf/sh-init)

rc_source_cat redoconf/modules/csh.executable.rc
rc_source_cat redoconf/modules/c_compiler.rc
rc_source_cat redoconf/modules/cxx_compiler.rc
rc_source_cat redoconf/modules/library_ncurses.rc
rc_source_cat redoconf/modules/platform.rc

[ -n "$HAVE_C_COMPILER" ] || die "Requires a C compiler."
[ -n "$HAVE_CXX_COMPILER" ] || die "Requires a C++ compiler."
[ -n "$HAVE_CSH" ] || die "Requires the csh shell."
[ -n "$HAVE_NCURSES" ] || die "Requires ncurses."

export SELF_WORKING_DIR="$(pwd)"
export PATH="$(pwd)/bin/clean:$PATH"
export TARGET_COMPILER=gcc
case $BUILDPLATFORM in
  Linux)  export PLATFORM=linux ;;
  MacOSX) export PLATFORM=mac_os_x ;;
  *)
    die "Unknown platform $BUILDPLATFORM" ;;
esac
if [ -n $HAVE_X86 ]; then
  export TARGET_ARCH=i386
elif [ -n $HAVE_PPC ]; then
  export TARGET_ARCH=ppc
else
  die "Unknown architecture $BUILDARCH"
fi

rc_record SELF_WORKING_DIR
rc_append_with_delim PATH : $(pwd)/bin/clean
rc_record TARGET_COMPILER
rc_record TARGET_ARCH
rc_record PLATFORM

define_flags='-DGENERATE_DEBUGGING_AIDS=0 -DSPEND_TIME_FOR_DEBUGGING_BY_DEFAULT=0 -DTARGET_IS_PROFILED=0 -DTARGET_IS_OPTIMIZED=1   -DXLIB -DFAST_COMPILER -DSIC_COMPILER -DDYNLINK_SUPPORTED -DDEBUG -DCOMPILER=GCC_COMPILER -DASSEMBLER= -DMANUFACTURER=  -DTARGET_OS_VERSION=LINUX_VERSION -DTARGET_OS_FAMILY=UNIX_FAMILY -DHOST_ARCH=I386_ARCH -DTARGET_ARCH=I386_ARCH'
error_flags='-Wreturn-type -Wswitch -Wcomment -Wformat -Wpointer-arith -Woverloaded-virtual -Wno-write-strings'
feature_flags='-fno-exceptions -ffriend-injection -Winvalid-pch -fno-stack-protector -fkeep-inline-functions'


if [ -n $HAVE_X86_64 ]; then
  feature_flags="$feature_flags -fpermissive"
fi

rc_append CPPFLAGS "$define_flags"
rc_append CXXFLAGS "$feature_flags $error_flags"
rc_append CFLAGS "$feature_flags $error_flags -Wtraditional-conversion -Wimplicit"


