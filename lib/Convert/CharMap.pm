# $File: $ $Author: $
# $Revision: $ $Change: $DateTime: $

package Convert::CharMap;
$PACKAGE::VERSION = '0.01';

use strict;

=head1 NAME

Convert::CharMap - Conversion between Unicode Character Maps

=head1 VERSION

This document describes version 0.01 of Convert::CharMap, released
January 26, 2003.

=head1 SYNOPSIS

    use Convert::CharMap;
    my $map = Convert::CharMap->load(CharMapML => 'test.xml');
    $map->save(UCM => 'test.ucm');

=head1 DESCRIPTION

This module transforms between unicode character map formats, using
an in-memory representation of C<CharMapML> as the intermediate format.

Currently is supports the C<CharMapML>, C<YAML> and C<UCM> (write-only)
backends; C<ENC>, C<Iconv> and other maps are also planned. 

=cut

sub new {
    my $class = shift;
    return $class->load(@_);
}

sub load {
    my ($class, $subclass, $file) = @_;
    $class = ref($class) if ref($class);

    require "Convert/CharMap/$subclass.pm";
    my $self = "$class\::$subclass"->in($file);
    return bless($self, $class);
}

sub save {
    my ($self, $subclass, $file) = @_;
    my $class = ref($self);

    local *OUT;
    open OUT, ">$file" or die $!;
    require "Convert/CharMap/$subclass.pm";
    print OUT "$class\::$subclass"->out($self);
    close OUT;
}

1;

=head1 AUTHORS

Autrijus Tang E<lt>autrijus@autrijus.orgE<gt>

=head1 COPYRIGHT

Copyright 2003 by Autrijus Tang E<lt>autrijus@autrijus.orgE<gt>.

This program is free software; you can redistribute it and/or 
modify it under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
