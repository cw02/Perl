#!/usr/bin/perl -w

print "Monthly deposit amount? ";
$pmt=<STDIN>;
chomp $pmt;

print "Annual Interest rate? (ex. 7% is .07) ";
$interest=<STDIN>;
chomp $interest;

print "Number of months to deposit? ";
$mons=<STDIN>;
chomp $mons;

# Formula requires a monthly interest
$interest/=12;

$total=$pmt * ( ( ( 1 + $interest) ** $mons ) -1)/ $interest;

print "After $mons months, at $interest monthly you\n";
print "will have $total.\n";