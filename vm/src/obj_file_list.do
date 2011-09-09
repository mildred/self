eval $(../../redoconf/sh-init)
rc_source ../../config

rc_cat ./src_file_list | while read f; do
  case "$f" in
    *.c)    echo ${f%.c}.o    ;;
    *.cpp)  echo ${f%.cpp}.o  ;;
    *.s)    echo ${f%.s}.o    ;;
    *)      ;;
  esac
done

