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

    # TTからXslateに切り替える場合
    # % cpanm Text::Xslate::Bridge::TT2Like
    # % cpanm Sledge::Template::Xslate;
    #require Sledge::Template::Xslate;
    #return Sledge::Template::Xslate->new($file, $self);
}

1;
