#!/usr/bin/env perl

use strict;
use warnings;
# use warning 'all';
use feature qw/ signatures say /;
use Data::Dumper;
use ExtUtils::Installed;
use Try::Tiny::SmartCatch;
try sub {
    print "try something \n ";
    eval {
        die "done";
    };

}, 
catch_default sub {
    print "caught something \n ";
},
finally sub {
    print "done!!\n";
}
;
exit;

eval {
    die "done";
};
if($@) {
    print "Error: $@";
}

{
    local $a = 10;
    say $a."\n";
}

# say Dumper(ExtUtils::Installed->new->modules);
say Dumper(ExtUtils::Installed->new->modules);
exit;
BEGIN {
    push @INC, '/home/euewrqe/Desktop/Scripts';

}
use OurModule qw/ add_nums /;
# use Dog;
# my $dog = Dog->new('labrador', 50, 70, 'yellow', 'pitty');
# say $dog->breed;
# say $dog->height;
# say add_nums(2,3);

say OurModule->arrow_add_nums(3,4);

# while (<STDIN>) {
#     say $_ ;

#     if($_ =~ /exit/) {
#         last;
#     }
# }
use JSON::XS;

my $detail = { 
    name => "mam",
    code => '%ffff%',
    meter => [ 19, 20 ]
};
my $ret = encode_json($detail);
say $ret;
say Dumper decode_json($ret)


