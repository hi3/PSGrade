#!/usr/bin/env bash
#
# Copyright (C) Youness Alaoui (KaKaRoTo)
#
# This software is distributed under the terms of the GNU General Public
# License ("GPL") version 3, as published by the Free Software Foundation.
#

all_targets="benito blackcat maximus minimus1 minimus32 olimex8 olimex16 teensy1 teensy2 teensypp1 teensypp2 at90usbkey atmegausbkey usbtinymkii xplain"

i=1
for target in ${all_targets}; do
  let ${target}=$i
  let i++
done

#
mcu[$benito]=at90usb162
board[$benito]=BENITO
mhz_clock[$benito]=16
name[$benito]="Benito"

#
mcu[$blackcat]=at90usb162
board[$blackcat]=BLACKCAT
mhz_clock[$blackcat]=16
name[$blackcat]="Blackcat"

#
mcu[$maximus]=at90usb162
board[$maximus]=MAXIMUS
mhz_clock[$maximus]=16
name[$maximus]="Maximus"

#
mcu[$minimus1]=at90usb162
board[$minimus1]=MINIMUS
mhz_clock[$minimus1]=16
name[$minimus1]="Minimus_v1"

## It actually is atmega32u2 but at90usb162 is compatible and
## the latest avr-gcc doesn't compile for atmega32u2
mcu[$minimus32]=atmega32u2
board[$minimus32]=MINIMUS
mhz_clock[$minimus32]=16
name[$minimus32]="Minimus_32"

#
mcu[$olimex8]=at90usb162
board[$olimex8]=OLIMEX
mhz_clock[$olimex8]=8
name[$olimex8]="Olimex"

#
mcu[$olimex16]=at90usb162
board[$olimex16]=OLIMEX
mhz_clock[$olimex16]=16
name[$olimex16]="Olimex"

#
mcu[$teensy1]=at90usb162
board[$teensy1]=TEENSY
mhz_clock[$teensy1]=16
name[$teensy1]="Teensy_1.0"

#
mcu[$teensy2]=atmega32u4
board[$teensy2]=TEENSY
mhz_clock[$teensy2]=16
name[$teensy2]="Teensy_2.0"

#
mcu[$teensypp1]=at90usb646
board[$teensypp1]=TEENSY
mhz_clock[$teensypp1]=16
name[$teensypp1]="Teensy++_1.0"

#
mcu[$teensypp2]=at90usb1286
board[$teensypp2]=TEENSY
mhz_clock[$teensypp2]=16
name[$teensypp2]="Teensy++_2.0"

#
mcu[$at90usbkey]=at90usb1287
board[$at90usbkey]=USBKEY
mhz_clock[$at90usbkey]=8
name[$at90usbkey]="AT90_USBKEY"

#
mcu[$atmegausbkey]=atmega16u4
board[$atmegausbkey]=USBKEY
mhz_clock[$atmegausbkey]=8
name[$atmegausbkey]="ATMEGA_USBKEY"

#
mcu[$usbtinymkii]=at90usb162
board[$usbtinymkii]=USBTINYMKII
mhz_clock[$usbtinymkii]=16
name[$usbtinymkii]="USBTINYMKII"

#
mcu[$xplain]=at90usb1287
board[$xplain]=XPLAIN
mhz_clock[$xplain]=8
name[$xplain]="XPLAIN"

#
mcu[$openkubus]=atmega16u4
board[$openkubus]=USBKEY
mhz_clock[$openkubus]=8
name[$openkubus]="OpenKubus"

