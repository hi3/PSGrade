#!/bin/bash

ALLBOARDS=( `ls boards | sort` )
STARTDIR=${PWD}

echo "cleaning for all boards"

cd boards

for ABOARD in ${ALLBOARDS[@]}; do
  CURDIR=${ABOARD} && \
  echo "cleaning --> ${ABOARD}" && \
  cd ${ABOARD} && \
  (make clean 1> ${ABOARD}.out 2>&1)
  cd .. 
done
#|| echo "ERROR! in ${CURDIR}" ; exit 1

cd ${STARTDIR}

echo "built for all boards"

