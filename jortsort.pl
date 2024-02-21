#!/usr/bin/env perl

use feature qw{say state signatures};
use strict;
use warnings;
use utf8;
no warnings qw{ experimental };

my @examples = ( [ 1, 2, 3, 4, 5 ], [ 2, 3, 1, 5, 4 ] );

for my $e (@examples) {
    my $jort = jortsort( $e->@* );
    say join "\n\t",
        ( $jort ? 'true' : 'false' ),
        join ', ', $e->@*;
}

# https://jacoby.github.io/2021/11/15/its-the-mullet-of-algorithms-the-weekly-challenge-139.html
# http://jort.technology/
sub jortsort (@array) {
    my @copy = sort { $a <=> $b } @array;
    for my $i ( 0 .. -1 + scalar @array ) {
        return 0 if $copy[$i] ne $array[$i];
    }
    return 1;
}
