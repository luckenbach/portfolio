#!/usr/bin/perl

use Data::Dumper;

@l =+ qw( t h e r e a r e t w e n t y s i x f a c t o r i a l p o s s i b i l i t i e s s o i t i s o k a y i f y o u w a n t t o j u s t g i v e u p z q m d);
@n =+ qw( r b c p c y p c r t c s r a d k h w y f r e p k y m v e d d k n k m k r k c d d e k r k d e o y a k w a e j t y s r r e u j d r l k g c j v q z x i);

@a{@n}=@l;
@b{@l}=@n;

my $count++;
sub Decode_String {
	print "Case #$count: ";
	my @chars = split(//,$_[0]);
	foreach $char (@chars) {
		chomp($char);
		if($char =~ /\s/) {
			print " ";
		} else {
			print$a{$char};
		}
	}
	print "\n";
}


my $file = $ARGV[0];

open(FH, $file);

my @data = <FH>;
chomp(@data);

my $total_count = shift(@data);

while($count <= $total_count) {
	my $string = shift(@data);
	&Decode_String($string);
	$count++;
}
