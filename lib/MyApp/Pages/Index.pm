package MyApp::Pages::Index;

use strict;
use base qw(MyApp::Pages);

sub dispatch_index { 
    my $self = shift;

    $self->tmpl->param( 
        data_string   => "this is string",
        data_arrayref => [ 1, 2, 3 ],
        data_hashref  => { one => 1, two => 2, three => 3 },
        data_object   => MyApp::Config->new,
        data_coderef  => sub { rand },
    );
}

1;
