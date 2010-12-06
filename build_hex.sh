#!/usr/bin/env bash
#
# Copyright (C) Youness Alaoui (KaKaRoTo)
#
# This software is distributed under the terms of the GNU General Public
# License ("GPL") version 3, as published by the Free Software Foundation.
#

avr_gcc_ver=`avr-gcc --version | head -n 1 | awk '{print $3}'`
if [[ $avr_gcc_ver < "4.3.5" ]]; then
  echo "OpenKubus compilation disabled. You need avr-gcc version 4.3.5 or later."
  echo "(You currently have avr-gcc version ${avr_gcc_ver})"
else
  all_targets="${all_targets} openkubus"
fi

if command -v gmake &>/dev/null; then
	MAKE=gmake
else
	MAKE=make
fi

# source in all the supported board build parameters
source boards.sh

while [ "x$1" != "x" ]; do
  targets="$targets ${1}"
  shift
done
if [ "x$targets" == "x" ]; then
  for i in ${all_targets}; do
    targets="$targets ${i}"
  done
fi

echo "Building for targets : $targets"

rm -rf psgrade_hex/
mkdir psgrade_hex
$MAKE clean_list > /dev/null

for target in ${targets}; do
    low_board=`echo ${board[${!target}]} | awk '{print tolower($0)}'`
    filename="psgrade_${low_board}_${mcu[${!target}]}_${mhz_clock[${!target}]}mhz"
    echo "Compiling $filename for ${name[${!target}]}"
    $MAKE TARGET=$filename MCU=${mcu[${!target}]} BOARD=${board[${!target}]} F_CPU=${mhz_clock[${!target}]}000000 > /dev/null || exit 1
    mkdir -p "psgrade_hex/${name[${!target}]}"
    mv *.hex "psgrade_hex/${name[${!target}]}/"
    $MAKE clean_list TARGET=$filename > /dev/null
done

