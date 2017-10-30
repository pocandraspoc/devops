#!/bin/bash
sdate(){
	SSTR="Start Time:"
	SDATE=$(date)
	echo $SSTR
	echo $SDATE
}

edate(){
	ESTR="End Time:"
	EDATE=$(date)
  echo $SSTR
	echo $SDATE
	echo $ESTR
	echo $EDATE
}

./00A00_A.sh
./00A00_tools.sh
./00A01_git.sh
./00A02_r.sh
./00A03_nvidia_pre.sh

edate()

reboot now
