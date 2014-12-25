#!/usr/bin/env perl

# use strict を使うと
# 宣言のないグローバル変数が使えなくなります。
use strict;
use Data::Dumper;

# Perlのハッシュはキーと値のペアで指定します。
# Perlのハッシュは順番は保存されません。
my %data1 = ( "one" ,  1, "two" ,  2, "three" ,  3 );
# , の代わりに => を使うこともできます。 => の前の文字列が" "で囲まなくても、キー扱いになります。
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

my $data1 = \%data1;      # ハッシュはバックスラッシュをつけることで、リファレンスにできます。
my $data2 = { one => 1, two => 2, three => 3 }; # {} で直接ハッシュリファレンスを作ることもできます。

print "--------------\n";
print Dumper $data1;
print "--------------\n";
print Dumper $data2;
