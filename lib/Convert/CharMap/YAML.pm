# $File: //member/autrijus/Convert-CharMap/lib/Convert/CharMap/YAML.pm $ $Author: autrijus $
# $Revision: #1 $ $Change: 3878 $ $DateTime: 2003/01/26 16:01:56 $

package Convert::CharMap::YAML;

use YAML qw(Dump LoadFile);

sub in {
    my $class = shift;
    return LoadFile(+shift);
}

sub out {
    my $class = shift;
    return Dump(+shift);
}

1;
