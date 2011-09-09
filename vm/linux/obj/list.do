eval $(../../../redoconf/sh-init)
rc_source ../../../config

rc_cat ../src_file_list | while read f; do
  fo="$(basename "$f")"
  case "$fo" in
    *.c)    fo="${fo%.c}.o"    ;;
    *.cpp)  fo="${fo%.cpp}.o"  ;;
    *.s)    fo="${fo%.s}.o"    ;;
    *)      continue          ;;
  esac
  printf "%s\t%s\n" "$fo" "../$f"
done

printf "%s\t%s\n" "vmDate.o" "../generated/vmDate.s"


