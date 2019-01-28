#!/usr/bin/env perl6

my @weekdays = < Mon Tue Wed Thu Fri Sat Sun >;

sub MAIN ( Int $year ){
    for (flat(1 .. 6, 9 .. 12).kv) -> $meeting, $month {
	my $first_day = Date.new($year, $month, 1);
	my $date = $first_day.clone( day=>
	  ((($meeting % 5) - ($first_day.day-of-week - 1)) % 7) + 1 + 14
        );
        say "@weekdays[$date.day-of-week - 1], $date";
    }
}

