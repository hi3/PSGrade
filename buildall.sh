#!/bin/bash

ALLBOARDS=( `ls boards | sort` )
STARTDIR=${PWD}

echo "building for all boards"

cd boards

for ABOARD in ${ALLBOARDS[@]}; do
  CURDIR=${ABOARD} && \
  echo "building --> ${ABOARD}" && \
  cd ${ABOARD} && \
  (make clean 1> ${ABOARD}.out 2>&1) && \
  (make all 1> ${ABOARD}.out 2>&1)
  cd .. 
done
#|| echo "ERROR! in ${CURDIR}" ; exit 1

echo "cleaning lufa-lib"
cd ${STARTDIR}/src/lufa-lib/trunk && \
make clean 1> /dev/null 2>&1

cd ${STARTDIR}

echo "built for all boards"

