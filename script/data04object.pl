#!/usr/bin/env perl

use strict;

print __PACKAGE__, "\n"; # main    Perlは指定しないと名前空間（パッケージ名）はmainになります。

package Car;

print __PACKAGE__, "\n"; # Car

# Perlでオブジェクトを作るには bless データ パッケージ名 とします。
# これを返すメソッドがコンストラクタになります。（ゆるいです）
sub new {
    my $package = __PACKAGE__;
    my $hash_reference = {};
    my $object = bless $hash_reference, $package;
    return $object;
}

sub hello {
    return "world";
}

package main;

use Data::Dumper;

my $object = Car->new;

print "--------------\n";
print Dumper $object;
print "--------------\n";
print "hello ", $object->hello, "\n";
