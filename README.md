PSGrade
=======

This is PSGrade, an open-source reimplementation of the psjailbreak service jig for AT90USB and related microcontrollers, based in part on psgroove.

It is known to work on:

- AT90USB162
- AT90USB646
- AT90USB647
- AT90USB1286
- AT90USB1287
- ATMEGA32U2
- ATMEGA32U4

... and maybe more.


Cloning
-------
The repository uses the LUFA library as a submodule.  To clone, use something like:

    git clone git://github.com/zAxis/PSGrade.git
    cd PSGrade


Configuring
-----------

Edit Makefile to reflect the dongle being used.  Alternately, you can just use the "build_hex.sh" to automatically build hex files for all supported boards.


Building
--------
On Linux, use the AVR GCC toolchain (Debian/Ubuntu package: gcc-avr).
On Windows, WinAVR should do the trick.

    ./build_hex.sh


Using
-----
To use the service jig:

* Hard power cycle the PS3 (using the switch in back, or unplug it)
* Plug the downgrade dongle into the PS3
* Press the PS3 power button, followed by disc eject
* Once the playstation has booted, look at the firmware version
* Shutdown the playstation
* Remove the dongle

* Power on the playstation, verify the playstation is now in service mode
* Shutdown the playstation

* Locate the necessary lv2diag.self (stage 1) and PS3UPDAT.PUP
* Put both files in the root (not in a sub-directory) of a freshly formatted USB flash drive (it is important there are NO other files on the USB flash drive)
* Plug the USB flash drive into the USB port closest to the Blu-Ray drive
* Power on the playstation
* There will not be any activity on the screen, the USB flash drive access LED will blink
* Once the downgrade has completed, the playstation will shutdown
* Remove the USB Flash drive

* Power on the playstation, verify the playstation is still in service mode
* Check the firmware version in system settings
* Verify the downgrade was successful
* Shutdown the playstation

* Locate the necessary lv2diag.self (stage 2)
* Put the file in the root (not a sub-directory) of a freshly formatted USB flash drive
* As before, plug the USB flash drive into the USB port closest the Blu-Ray drive
* Power on the playstation, the lv2diag will disable service mode and shutdown the playstation
* Remove the USB flash drive once the playstation is shutdown
* Turn off the power or unplug the playstation

* Turn on the power / plug in the playstation
* Once the playstation has booted, verify it is no longer in service mode
* Verify the firmware version in the system settings


Thanks (in no particular order)
------
graf_chokolo
Hansi
mathieulh
kakaroto
zAxis

