# $File: //member/autrijus/Convert-CharMap/lib/Convert/CharMap/CharMapML.pm $ $Author: autrijus $
# $Revision: #1 $ $Change: 3878 $ $DateTime: 2003/01/26 16:01:56 $

package Convert::CharMap::CharMapML;

use XML::Simple;

sub in {
    my $class = shift;
    return XMLin(+shift, keeproot => 1);
}

sub out {
    my $class = shift;
    return XMLout(
	+shift, keeproot => 1, xmldecl => '<?xml version="1.0" encoding="UTF-8" ?>' . "\n" .
	    '<!DOCTYPE characterMapping SYSTEM "http://www.unicode.org/unicode/reports/tr22/CharacterMapping.dtd">'
    );
}

1;
