#!/usr/bin/env perl6

my @weekdays = < Mon Tue Wed Thu Fri Sat Sun >;

sub MAIN ( Int $year ){
    for (flat(1 .. 6, 9 .. 12).kv) -> $meeting, $month {
	my $first_day = Date.new($year, $month, 1);
        my $want_dow  = $meeting % 5;
	my $first_dow = $first_day.day-of-week - 1;
	my $day       = (($want_dow - $first_dow) % 7) + 1 + 14;

	my $date      = $first_day.clone( day=> $day );
        say "@weekdays[$date.day-of-week - 1], $date";
    }
}

