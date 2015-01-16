use strict;
use warnings;
use lib "lib";

# https://github.com/mala/Sledge-PSGI/blob/master/lib/Sledge/PSGI.pm#L216
use MyApp;
MyApp->override_compat; # override Sledge::Pages::Compat for using Sledge::PSGI
MyApp->setup; # auto-setup by scanning MyApp::Pages::*
# MyApp->setup("map.properties"); # setup by map.properties file
my $app = sub { MyApp->new->run(@_) };
