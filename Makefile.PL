#!/usr/bin/perl
# $File: //member/autrijus/Convert-Session-BerkeleyDB/Makefile.PL $ $Author: autrijus $
# $Revision: #2 $ $Change: 670 $ $DateTime: 2002/08/16 18:42:29 $

require 5.006;

use ExtUtils::MakeMaker;

WriteMakefile(
    AUTHOR		=> 'Autrijus Tang (autrijus@autrijus.org)',
    ABSTRACT		=> 'Conversion between Unicode Character Maps',
    NAME		=> 'Convert::CharMap',
    VERSION_FROM	=> 'lib/Convert/CharMap.pm', 
    DISTNAME		=> 'Convert-CharMap',
    BINARY_LOCATION	=> 'x86/Convert-Map.tar.gz',

    PREREQ_PM		=> {
	'charnames'	=> 0,
	'XML::Simple'	=> 0,
	'YAML'		=> 0,
    },

    dist		=> {
        COMPRESS	=> 'gzip -9',
        SUFFIX		=> '.gz',
    },
);

