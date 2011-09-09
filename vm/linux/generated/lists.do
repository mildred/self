eval $(../../../redoconf/sh-init)
rc_source ../../../config

make lists >&2

mv Dependencies Dependencies.tmp
perl -e '

my $prevline = <STDIN>;
while (my $line = <STDIN>) {
  if($line =~ m/^ /) {
    $prevline =~ s/\s*$/ \\\n/;
  }
  print $prevline;
  $prevline = $line;
}
print $prevline;

' < Dependencies.tmp >Dependencies
rm -f Dependencies.tmp

