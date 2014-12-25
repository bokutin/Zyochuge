#!/usr/bin/env perl

# use strict を使うと
# 宣言のないグローバル変数が使えなくなります。
use strict;
use Data::Dumper;

my @data = ( 1, 2, 3 );

print "--------------\n";
print $data[1], "\n"; # 2
print "--------------\n";
print Dumper @data;   # Dumper(  1, 2, 3  ) 相当です(引数3つ)
print "--------------\n";
print Dumper \@data;  # Dumper( [1, 2, 3] ) 相当です(引数1つ)

my $data1 = \@data;      # 配列はバックスラッシュをつけることで、リファレンスにできます。
my $data2 = [ 1, 2, 3 ]; # [] で直接アレイリファレンスを作ることもできます。

print "--------------\n";
print Dumper $data1;
print "--------------\n";
print Dumper $data2;
