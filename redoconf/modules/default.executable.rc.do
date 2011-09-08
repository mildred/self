eval $(../sh-init)

name="$1"
upcase_name="$(tr a-z A-Z <<<"$1")"

if (rc_have_command "$1"); then
  echo "HAVE_$upcase_name=1"
else
  echo "unset HAVE_$upcase_name"
fi

