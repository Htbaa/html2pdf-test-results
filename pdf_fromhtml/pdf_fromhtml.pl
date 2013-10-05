#!/usr/bin/env perl
use strict;
use warnings;
use PDF::FromHTML;
use v5.14;

my $pdf = PDF::FromHTML->new(encoding => 'utf-8');
$pdf->load_file($ARGV[0]);

$pdf->convert(
    Landscape => 0,
    Pagesize  => 'A4',
);

$pdf->write_file($ARGV[1]);
