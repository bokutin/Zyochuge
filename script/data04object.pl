#!/usr/bin/env perl

use strict;

print __PACKAGE__, "\n"; # main    Perl�ϻ��ꤷ�ʤ���̾�����֡ʥѥå�����̾�ˤ�main�ˤʤ�ޤ���

package Car;

print __PACKAGE__, "\n"; # Car

# Perl�ǥ��֥������Ȥ���ˤ� bless �ǡ��� �ѥå�����̾ �Ȥ��ޤ���
# ������֤��᥽�åɤ����󥹥ȥ饯���ˤʤ�ޤ����ʤ�뤤�Ǥ���
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
