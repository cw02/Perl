opendir my $dir, "/some/path" or die "Cannot open directory: $!";
my @files = readdir $dir;
closedir $dir;