#!/bin/bash
DB=$1
PASSWD=$2
TODAY=`date +"%Y_%m_%d_%H_%M"`
BCKP_DIR="/dump"
BCKP_NAME="BCKP_${DB}_${TODAY}"
BCKP_FILE="${BCKP_NAME}.txt"
LOG_FILE="${BCKP_NAME}.log"

PRG_NAME=$(basename $0)
echo "usage : ${PRG_NAME} <DB name> <admin PASSWORD>"
echo " "


pg_dump --file=${BCKP_DIR}/${BCKP_FILE}  --dbname=postgresql://postgres:${PASSWD}@postgres:5432/$DB --verbose --format=p &> ${BCKP_DIR}/${LOG_FILE}



