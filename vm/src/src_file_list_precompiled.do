eval $(../../redoconf/sh-init)
rc_source ../../config

rc_cat Dependencies | perl -e '
  $record = 0;
  while (<STDIN>) {
    if($record) {
      if(m/^(\S*\.hh)/) {
        print "$1\n";
      } else {
        $record = 0;
      }
    }
    if(m/^Precompiled_Files =/) {
      $record = 1;
    }
  }
'

