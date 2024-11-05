#!/usr/bin/perl
# Name: macRun.pl
# Author: Jason Campisi
# Date: 11/2/2024
# Version 1.0.1
# Purpose: This releases the macOS gatekeeper flag on a program downloaded from the internet that is not a signed-app.
#          Not unsigned apps on MacOS if compiled in a system will run fine, but it's downloaded from the Net then 
#          Gatekeeper gives the app a “quarantined” flag that is was downloaded from a arbitrary websites. 
# Project: https://github.com/xeoron/macRun
# License: Released under GPL v3 or higher. Details here http://www.gnu.org/licenses/gpl.html
use strict;

use Getopt::Long;
my ($program, $name) = ('','macRun');
GetOptions('u=s' =>\$program);


if ($program ne ""){
    print "Attempting to remove quarantine flag for $program...\n";
    qx\xattr -d com.apple.quarantine $program\;
} else {
 print <<EOD;
This releases the macOS gatekeeper flag on a program downloaded from the internet that is not a signed-app.
This is not the case for unsigned apps on MacOS if compiled in the system built or a custom script-- 
they will will run fine. It's when downloaded from the Net that activates Gatekeeper.  
Gatekeeper gives a download app a “quarantined” flag that is was downloaded from a arbitrary websites 
and if unsigned takes more action.

Usage:  $name -u program_to_unflag
EOD
}
exit 0;  