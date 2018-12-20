use File::Find;

my @content;
find( \&wanted, '/some/path');
do_something_with( @content );

exit;

sub wanted {
  push @content, $File::Find::name;
  return;
}