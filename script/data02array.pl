#!/usr/bin/env perl

# use strict ��Ȥ���
# ����Τʤ������Х��ѿ����Ȥ��ʤ��ʤ�ޤ���
use strict;
use Data::Dumper;

my @data = ( 1, 2, 3 );

print "--------------\n";
print $data[1], "\n"; # 2
print "--------------\n";
print Dumper @data;   # Dumper(  1, 2, 3  ) �����Ǥ�(����3��)
print "--------------\n";
print Dumper \@data;  # Dumper( [1, 2, 3] ) �����Ǥ�(����1��)

my $data1 = \@data;      # ����ϥХå�����å����Ĥ��뤳�Ȥǡ���ե���󥹤ˤǤ��ޤ���
my $data2 = [ 1, 2, 3 ]; # [] ��ľ�ܥ��쥤��ե���󥹤��뤳�Ȥ�Ǥ��ޤ���

print "--------------\n";
print Dumper $data1;
print "--------------\n";
print Dumper $data2;
