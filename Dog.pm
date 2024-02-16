package Dog;

use strict;
sub new {
    my ( $class, $breed, $height, $weight, $color, $name )  = @_;
    my $self = { 
        breed => $breed,
        height => $height,
        weight => $weight,
        color => $color,
        name => $name
    };
    bless $self, $class;
}


# sub breed {
#     my $self = shift;
#     return $self->{breed};
# }

# sub height {
#     my $self = shift;
#     return $self->{height};
# }
# sub set_height {
#     my ($self, $height) = @_;
#     $self->{height} = $height;
# }
1;