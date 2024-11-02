# macRun
This releases the macOS gatekeeper flag on a program downloaded from the internet that is not a signed-app.
Not unsigned apps on MacOS if compiled in a system will run fine, but it's downloaded from the Net then 
Gatekeeper gives the app a “quarantined” flag that is was downloaded from a arbitrary websites.

Usage:  macRun -u program_to_unflag