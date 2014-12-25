use strict;
use Template;

package Car;

sub new {
    my $class = shift;
    my $data = { number => 0 };
    return bless $data, $class;
}

sub next {
    my ($self, $number) = @_;

    if ($number) {
        $self->{number} = $number;
    }
    else {
        ++$self->{number};
    }
}

package main;

my $app = sub {
    my $env = shift;

    my $tt = Template->new(
        INCLUDE_PATH => "tmpl",
    );
    my $body;
    my $stash = {
        data_string   => "this is string",
        data_arrayref => [ 1, 2, 3 ],
        data_hashref  => { one => 1, two => 2, three => 3 },
        data_object   => Car->new,
        data_coderef  => sub { rand },
    };
    $tt->process("index.html", $stash, \$body);

    return [
        '200',
        [ 'Content-Type' => 'text/html; charset=utf-8' ],
        [ $body ],
    ];
};
