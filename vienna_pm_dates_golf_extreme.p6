#!/usr/bin/env perl6

sub MAIN ( Int $y ){
    for (flat(1 .. 6, 9 .. 12).kv) -> $me, $mo {
	my $d = Date.new($y, $mo, 1);
	say $d.clone( day=>
	  ((($me % 5) - ($d.day-of-week - 1)) % 7) + 15
        );
    }
}

