package MyApp::Pages;

use strict;
use base qw(Sledge::PSGI::PagesBase);

sub create_authorizer {
    my $self = shift;
    require Sledge::Authorizer::Null;
    Sledge::Authorizer::Null->new($self);
}

sub create_charset {                                                                                                                           
    my $self = shift;                                                                                                                          
    require Sledge::Charset::UTF8;
    Sledge::Charset::UTF8->new($self);
}

sub create_config {
    require MyApp::Config;
    MyApp::Config->new;
}

sub create_manager {                                                                                                                           
    my $self = shift;                                                                                                                          
    require Sledge::SessionManager::Null;
    Sledge::SessionManager::Null->new($self);                                                                                                  
}

sub create_template {
    my ($self, $file) = @_;

    require Sledge::Template::TT;
    return Sledge::Template::TT->new($file, $self);
}

1;
