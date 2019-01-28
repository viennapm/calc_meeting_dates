#!/usr/bin/env perl6

my @weekdays = < Mon Tue Wed Thu Fri Sat Sun >;

sub MAIN ( Int $year ){
    for (1 .. 10) -> $meeting {
	my $month     = $meeting < 7 ?? $meeting !! $meeting + 2;
        my $want_dow  = ($meeting -1 ) % 5;
	my $first_dow = Date.new(year => $year, month => $month, day=>1).day-of-week - 1;
	my $day       = (($want_dow - $first_dow) % 7) + 1 + 14;

	my $date      = Date.new(year=>$year, month=>$month, day=>$day);
        say "@weekdays[$date.day-of-week - 1], $date";
    }
}

