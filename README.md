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

Edit Makefile to reflect your board.  Alternately, you can just use the build_hex.sh to automatically build hex files for all supported boards.

Edit jig_key in src/key.h

// ADD VALID JIG KEY HERE (aka master key)

const uint8_t jig_key[20] = {
        0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00
};


Building
--------
On Linux, use the AVR GCC toolchain (Debian/Ubuntu package: gcc-avr).
On Windows, WinAVR should do the trick.

    ./build_hex.sh


Using
-----
To use the service jig:
  
* Hard power cycle your PS3 (using the switch in back, or unplug it)
* Plug the dongle into your PS3.
* Press the PS3 power button.


Thanks (in no particular order)
------
graf_chokolo
Hansi
mathieulh
kakaroto
zAxis

