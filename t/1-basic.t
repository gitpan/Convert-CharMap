#!/usr/bin/perl -w
# $File: //member/autrijus/Apache-Session-BerkeleyDB/t/1-basic.t $ $Author: autrijus $
# $Revision: #1 $ $Change: 653 $ $DateTime: 2002/08/16 04:24:45 $

use strict;
use Test;

BEGIN { plan tests => 1 }

ok (eval { require Convert::CharMap; 1 });

__END__
