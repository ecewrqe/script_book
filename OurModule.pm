package OurModule;

use strict;
use warnings;

use Exporter qw/ import /;

our @EXPORT = qw/ add_nums arrow_add_nums /;

sub add_nums {
    my ($num1, $num2) = @_;
    return $num1 + $num2;
}

sub arrow_add_nums {
    my ($class, $num1, $num2) = @_;
    print $class."\n";
    return $num1 + $num2;
}