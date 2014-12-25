#!/usr/bin/env perl

# use strict ��Ȥ���
# ����Τʤ������Х��ѿ����Ȥ��ʤ��ʤ�ޤ���
use strict;
use Data::Dumper;

# Perl�Υϥå���ϥ������ͤΥڥ��ǻ��ꤷ�ޤ���
# Perl�Υϥå���Ͻ��֤���¸����ޤ���
my %data1 = ( "one" ,  1, "two" ,  2, "three" ,  3 );
# , ������� => ��Ȥ����Ȥ�Ǥ��ޤ��� => ������ʸ����" "�ǰϤޤʤ��Ƥ⡢���������ˤʤ�ޤ���
my %data2 = (  one  => 1,  two  => 2,  three  => 3 );

print "--------------\n";
print $data1{two}, "\n"; # 2
print "--------------\n";
print Dumper \%data1;
print "--------------\n";
print Dumper \%data2;

$data1{two} = 2 * 2;
print "--------------\n";
print $data1{two}, "\n"; # 4

my $data1 = \%data1;      # �ϥå���ϥХå�����å����Ĥ��뤳�Ȥǡ���ե���󥹤ˤǤ��ޤ���
my $data2 = { one => 1, two => 2, three => 3 }; # {} ��ľ�ܥϥå����ե���󥹤��뤳�Ȥ�Ǥ��ޤ���

print "--------------\n";
print Dumper $data1;
print "--------------\n";
print Dumper $data2;
