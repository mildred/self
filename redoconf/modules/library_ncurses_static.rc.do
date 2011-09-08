eval $(../sh-init)
rc_source_cat ./library_ncurses.rc

if [ -f /usr/lib/libncurses.a ]; then
  echo "HAVE_NCURSES_STATIC=1"
else
  echo "unset NCURSES_STATIC"
fi
