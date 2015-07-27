BEGIN {
  use Path::Class qw/file dir/;
  $Bin = file($0)->parent->stringify; # Like FindBin  
}

use lib "$Bin/lib";

use Plack::Util;
sub load_psgi { Plack::Util::load_psgi(@_) }

load_psgi("$Bin/ra_infosite.psgi")
