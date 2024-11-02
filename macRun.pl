
#!/usr/bin/perl -w
# Name: macRun.pl
# Author: Jason Campisi
# Date: 11/2/2024
# Version 0.1.0
# Purpose: This releases the macOS gatekeeper flag on a program downloaded from the internet that is not a signed-app.
#          Not unsigned apps on MacOS if compiled in a system will run fine, but it's downloaded from the Net then 
#          Gatekeeper gives the app a “quarantined” flag that is was downloaded from a arbitrary websites. 

# License: Released under GPL v3 or higher. Details here http://www.gnu.org/licenses/gpl.html
use strict;

foreach my $FILE (<>){
    print "$FILE unlocking...\n"
    `xattr -d com.apple.quarantine $FILE`
    print " -->Done!\n"
}