package MyApp::Config;

use strict;

sub new {
    my $class = shift;
    bless {}, $class;
}

sub tmpl_path {
    'tmpl';
}

1;
