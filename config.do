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
export PATH="$(pwd)/bin/linux:$(pwd)/bin/shell:$PATH"

rc_record SELF_WORKING_DIR
rc_append_with_delim PATH : $(pwd)/bin/linux
rc_append_with_delim PATH : $(pwd)/bin/shell

redo bin/linux/all

