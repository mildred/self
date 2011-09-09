eval $(redoconf/sh-init)

rc_source_cat redoconf/modules/csh.executable.rc
rc_source_cat redoconf/modules/c_compiler.rc
rc_source_cat redoconf/modules/cxx_compiler.rc
rc_source_cat redoconf/modules/library_ncurses_static.rc

[ -n "$HAVE_C_COMPILER" ] || die "Requires a C compiler."
[ -n "$HAVE_CXX_COMPILER" ] || die "Requires a C++ compiler."
[ -n "$HAVE_CSH" ] || die "Requires the csh shell."
[ -n "$HAVE_NCURSES_STATIC" ] || die "Requires static ncurses."

export SELF_WORKING_DIR="$(pwd)"
export PATH="$(pwd)/bin/clean:$PATH"
export TARGET_COMPILER=gcc
export TARGET_ARCH=i386
export PLATFORM=linux

rc_record SELF_WORKING_DIR
rc_append_with_delim PATH : $(pwd)/bin/clean
rc_record TARGET_COMPILER
rc_record TARGET_ARCH
rc_record PLATFORM

redo-ifchange bin/clean/makeFileLists
redo-ifchange bin/clean/cwdRootedIn
redo-ifchange bin/clean/makeDeps
redo-ifchange bin/clean/lock_run
redo-ifchange bin/clean/expandNames

