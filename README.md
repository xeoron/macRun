# macRun
This releases the macOS gatekeeper flag on a program downloaded from the internet that is not a signed-app.
This is not the case for unsigned apps on MacOS if compiled in the system built or a custom script-- 
they will will run fine, but it's downloaded from the Net that activates Gatekeeper.  Gatekeeper gives a download app a “quarantined” flag that is was downloaded from a arbitrary websites and if unsigned takes more action.

To install: sudo ./install_macRun.sh

To use: macRun -u program_to_unflag